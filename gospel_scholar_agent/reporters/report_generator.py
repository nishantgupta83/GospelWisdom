"""Report Generator - Creates validation reports in JSON and HTML"""

import json
from datetime import datetime
from pathlib import Path
from typing import Dict


class ReportGenerator:
    """Generates validation reports"""

    def __init__(self, output_dir: str = "./output"):
        self.output_dir = Path(output_dir)
        self.output_dir.mkdir(exist_ok=True)

    def generate_json_report(self, results: Dict, filename: str = None) -> str:
        """Generate JSON report"""
        if not filename:
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            filename = f"validation_report_{timestamp}.json"

        filepath = self.output_dir / filename

        report = {
            'generated_at': datetime.now().isoformat(),
            'results': results
        }

        with open(filepath, 'w') as f:
            json.dump(report, f, indent=2)

        return str(filepath)

    def generate_html_report(self, results: Dict, filename: str = None) -> str:
        """Generate HTML dashboard"""
        if not filename:
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            filename = f"quality_dashboard_{timestamp}.html"

        filepath = self.output_dir / filename

        html = f"""<!DOCTYPE html>
<html>
<head>
    <title>Gospel Wisdom - Validation Report</title>
    <style>
        body {{ font-family: Arial, sans-serif; margin: 20px; background: #f5f5f5; }}
        .container {{ max-width: 1200px; margin: 0 auto; background: white; padding: 30px; border-radius: 8px; }}
        h1 {{ color: #2c3e50; }}
        .score {{ font-size: 48px; font-weight: bold; color: #27ae60; }}
        .metric {{ display: inline-block; margin: 20px; text-align: center; }}
        .metric-label {{ color: #7f8c8d; font-size: 14px; }}
        .metric-value {{ font-size: 32px; font-weight: bold; color: #2c3e50; }}
        .timestamp {{ color: #95a5a6; font-size: 14px; }}
    </style>
</head>
<body>
    <div class="container">
        <h1>Gospel Wisdom Validation Report</h1>
        <p class="timestamp">Generated: {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}</p>
        <div class="metrics">
            <div class="metric">
                <div class="metric-label">Overall Score</div>
                <div class="score">{results.get('overall_score', 0)}</div>
            </div>
            <div class="metric">
                <div class="metric-label">Verses Checked</div>
                <div class="metric-value">{results.get('total_verses', 0)}</div>
            </div>
            <div class="metric">
                <div class="metric-label">Sources Used</div>
                <div class="metric-value">{len(results.get('sources', []))}</div>
            </div>
        </div>
    </div>
</body>
</html>"""

        with open(filepath, 'w') as f:
            f.write(html)

        return str(filepath)

    def generate_sql_fixes(self, issues: List[Dict], filename: str = None) -> str:
        """Generate SQL fix script"""
        if not filename:
            timestamp = datetime.now().strftime("%Y%m%d_%H%M%S")
            filename = f"fix_script_{timestamp}.sql"

        filepath = self.output_dir / filename

        sql = f"-- Gospel Wisdom Fix Script\n-- Generated: {datetime.now().isoformat()}\n\n"

        for issue in issues:
            if issue.get('fix_sql'):
                sql += f"{issue['fix_sql']}\n\n"

        with open(filepath, 'w') as f:
            f.write(sql)

        return str(filepath)
