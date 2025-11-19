"""
Special Character Validator - Detects dangerous or problematic characters
"""

import re
from typing import Dict, List


class SpecialCharValidator:
    """
    Validates text for dangerous special characters that could cause:
    - Runtime errors
    - Display issues
    - Security vulnerabilities
    - Data corruption
    """

    def __init__(self):
        # Dangerous characters to detect
        self.dangerous_chars = {
            '\x00': 'NULL byte',
            '\x01': 'Start of heading (SOH)',
            '\x02': 'Start of text (STX)',
            '\x03': 'End of text (ETX)',
            '\x04': 'End of transmission (EOT)',
            '\x05': 'Enquiry (ENQ)',
            '\x06': 'Acknowledge (ACK)',
            '\x07': 'Bell (BEL)',
            '\x08': 'Backspace (BS)',
            '\x0B': 'Vertical tab (VT)',
            '\x0C': 'Form feed (FF)',
            '\x0E': 'Shift out (SO)',
            '\x0F': 'Shift in (SI)',
            '\x7F': 'Delete (DEL)',
        }

        # Problematic patterns
        self.problematic_patterns = {
            r'\s{3,}': 'Excessive whitespace (3+ spaces)',
            r'\n{3,}': 'Excessive newlines',
            r'[\u200B-\u200D\uFEFF]': 'Zero-width characters',
            r'[\uFFFD]': 'Replacement character (�)',
            r'[\u2028\u2029]': 'Line/paragraph separators',
        }

        # SQL injection patterns
        self.sql_injection_patterns = {
            r"(?i)(union|select|insert|update|delete|drop|create|alter)\s+": 'SQL keyword',
            r"['\";]+\s*--": 'SQL comment injection',
            r"['\"];?\s*(or|and)\s+['\"]?1['\"]?\s*=\s*['\"]?1": 'SQL boolean injection',
        }

    def validate_text(self, text: str, check_sql: bool = True) -> Dict:
        """
        Validate text for dangerous or problematic characters.

        Args:
            text: Text to validate
            check_sql: Whether to check for SQL injection patterns

        Returns:
            Dictionary with validation results
        """
        issues = []

        # Check for dangerous control characters
        dangerous_found = self._check_dangerous_chars(text)
        if dangerous_found:
            issues.extend(dangerous_found)

        # Check for problematic patterns
        pattern_issues = self._check_patterns(text)
        if pattern_issues:
            issues.extend(pattern_issues)

        # Check for SQL injection if requested
        if check_sql:
            sql_issues = self._check_sql_injection(text)
            if sql_issues:
                issues.extend(sql_issues)

        # Check for invalid Unicode
        unicode_issues = self._check_unicode(text)
        if unicode_issues:
            issues.extend(unicode_issues)

        # Calculate safety score
        safety_score = self._calculate_safety_score(issues)

        return {
            'is_safe': len(issues) == 0,
            'safety_score': safety_score,
            'total_issues': len(issues),
            'issues': issues,
            'text_length': len(text),
            'text_preview': text[:100] + '...' if len(text) > 100 else text
        }

    def _check_dangerous_chars(self, text: str) -> List[Dict]:
        """Check for dangerous control characters."""
        issues = []

        for char, description in self.dangerous_chars.items():
            if char in text:
                positions = [i for i, c in enumerate(text) if c == char]
                issues.append({
                    'type': 'dangerous_character',
                    'character': repr(char),
                    'description': description,
                    'positions': positions,
                    'count': len(positions),
                    'severity': 'critical'
                })

        return issues

    def _check_patterns(self, text: str) -> List[Dict]:
        """Check for problematic patterns."""
        issues = []

        for pattern, description in self.problematic_patterns.items():
            matches = list(re.finditer(pattern, text))
            if matches:
                positions = [match.start() for match in matches]
                issues.append({
                    'type': 'problematic_pattern',
                    'pattern': pattern,
                    'description': description,
                    'positions': positions,
                    'count': len(matches),
                    'severity': 'medium'
                })

        return issues

    def _check_sql_injection(self, text: str) -> List[Dict]:
        """Check for SQL injection patterns."""
        issues = []

        for pattern, description in self.sql_injection_patterns.items():
            matches = list(re.finditer(pattern, text, re.IGNORECASE))
            if matches:
                positions = [match.start() for match in matches]
                issues.append({
                    'type': 'sql_injection_pattern',
                    'pattern': pattern,
                    'description': description,
                    'positions': positions,
                    'count': len(matches),
                    'severity': 'critical',
                    'matched_text': [match.group(0) for match in matches[:3]]  # First 3 matches
                })

        return issues

    def _check_unicode(self, text: str) -> List[Dict]:
        """Check for invalid Unicode sequences."""
        issues = []

        try:
            # Try to encode/decode to detect invalid Unicode
            text.encode('utf-8').decode('utf-8')
        except UnicodeError as e:
            issues.append({
                'type': 'invalid_unicode',
                'description': 'Invalid Unicode sequence detected',
                'error': str(e),
                'severity': 'high'
            })

        # Check for non-printable characters (excluding normal whitespace)
        non_printable = []
        for i, char in enumerate(text):
            if not char.isprintable() and char not in ['\n', '\t', '\r', ' ']:
                non_printable.append({
                    'position': i,
                    'character': repr(char),
                    'code_point': f'U+{ord(char):04X}'
                })

        if non_printable:
            issues.append({
                'type': 'non_printable_characters',
                'description': 'Non-printable characters found',
                'count': len(non_printable),
                'characters': non_printable[:10],  # First 10
                'severity': 'medium'
            })

        return issues

    def _calculate_safety_score(self, issues: List[Dict]) -> int:
        """
        Calculate safety score (0-100) based on issues found.

        100 = Completely safe
        0 = Critical issues found
        """
        if not issues:
            return 100

        deductions = 0

        for issue in issues:
            severity = issue.get('severity', 'low')
            count = issue.get('count', 1)

            if severity == 'critical':
                deductions += 30 * min(count, 3)  # Max 90 points for critical
            elif severity == 'high':
                deductions += 15 * min(count, 3)  # Max 45 points for high
            elif severity == 'medium':
                deductions += 8 * min(count, 3)   # Max 24 points for medium
            else:  # low
                deductions += 3 * min(count, 3)   # Max 9 points for low

        score = max(0, 100 - deductions)
        return score

    def clean_text(self, text: str, remove_dangerous: bool = True,
                  normalize_whitespace: bool = True) -> str:
        """
        Clean text by removing or normalizing problematic characters.

        Args:
            text: Text to clean
            remove_dangerous: Remove dangerous control characters
            normalize_whitespace: Normalize excessive whitespace

        Returns:
            Cleaned text
        """
        cleaned = text

        # Remove dangerous characters
        if remove_dangerous:
            for char in self.dangerous_chars.keys():
                cleaned = cleaned.replace(char, '')

        # Remove zero-width characters
        cleaned = re.sub(r'[\u200B-\u200D\uFEFF]', '', cleaned)

        # Remove replacement character
        cleaned = cleaned.replace('\uFFFD', '')

        # Normalize whitespace
        if normalize_whitespace:
            # Replace multiple spaces with single space
            cleaned = re.sub(r' {2,}', ' ', cleaned)
            # Replace multiple newlines with double newline
            cleaned = re.sub(r'\n{3,}', '\n\n', cleaned)

        # Normalize line endings
        cleaned = cleaned.replace('\r\n', '\n').replace('\r', '\n')

        return cleaned.strip()

    def validate_verse(self, verse_text: str, reference: str) -> Dict:
        """
        Validate a verse text with additional verse-specific checks.

        Args:
            verse_text: The verse text
            reference: Verse reference (e.g., "John 3:16")

        Returns:
            Validation results
        """
        result = self.validate_text(verse_text, check_sql=False)

        # Additional verse-specific checks
        verse_issues = []

        # Check length (verses shouldn't be too short or too long)
        if len(verse_text) < 5:
            verse_issues.append({
                'type': 'length',
                'description': 'Verse text suspiciously short',
                'length': len(verse_text),
                'severity': 'medium'
            })
        elif len(verse_text) > 500:
            verse_issues.append({
                'type': 'length',
                'description': 'Verse text unusually long',
                'length': len(verse_text),
                'severity': 'low'
            })

        # Check for empty or only whitespace
        if not verse_text.strip():
            verse_issues.append({
                'type': 'empty',
                'description': 'Verse text is empty or only whitespace',
                'severity': 'critical'
            })

        if verse_issues:
            result['issues'].extend(verse_issues)
            result['total_issues'] = len(result['issues'])
            result['safety_score'] = self._calculate_safety_score(result['issues'])

        result['reference'] = reference
        return result
