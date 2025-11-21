-- ============================================================================
-- POPULATE ALL GOSPEL VERSES
-- Generated: 2025-11-20 07:22:51
-- Source: bible-api.com (World English Bible - Public Domain)
-- Total: 89 chapters, ~3,779 verses across 4 Gospels
-- ============================================================================

BEGIN;

-- Clear existing verses (if any)
DELETE FROM gospel_verses WHERE translation_code = 'WEB';


-- Matthew Chapter 1 (25 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 1, 'The book of the genealogy of Jesus Christ, the son of David, the son of Abraham.', 'Matthew 1:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['abraham', 'jesus', 'david', 'genealogy', 'book', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 2, 'Abraham became the father of Isaac. Isaac became the father of Jacob. Jacob became the father of Judah and his brothers.', 'Matthew 1:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['jacob', 'judah', 'father', 'brothers', 'became', 'abraham', 'isaac']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 3, 'Judah became the father of Perez and Zerah by Tamar. Perez became the father of Hezron. Hezron became the father of Ram.', 'Matthew 1:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['tamar', 'perez', 'zerah', 'judah', 'father', 'became', 'hezron']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 4, 'Ram became the father of Amminadab. Amminadab became the father of Nahshon. Nahshon became the father of Salmon.', 'Matthew 1:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['amminadab', 'salmon', 'nahshon', 'father', 'became']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 5, 'Salmon became the father of Boaz by Rahab. Boaz became the father of Obed by Ruth. Obed became the father of Jesse.', 'Matthew 1:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesse', 'ruth', 'salmon', 'rahab', 'boaz', 'father', 'obed', 'became']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 6, 'Jesse became the father of King David. David became the father of Solomon by her who had been Uriah’s wife.', 'Matthew 1:6', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['jesse', 'been', 'david', 'king', 'wife', 'father', 'became', 'uriah’s', 'solomon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 7, 'Solomon became the father of Rehoboam. Rehoboam became the father of Abijah. Abijah became the father of Asa.', 'Matthew 1:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['solomon', 'rehoboam', 'father', 'became', 'abijah']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 8, 'Asa became the father of Jehoshaphat. Jehoshaphat became the father of Joram. Joram became the father of Uzziah.', 'Matthew 1:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['jehoshaphat', 'father', 'joram', 'became', 'uzziah']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 9, 'Uzziah became the father of Jotham. Jotham became the father of Ahaz. Ahaz became the father of Hezekiah.', 'Matthew 1:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['became', 'father', 'ahaz', 'uzziah', 'hezekiah', 'jotham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 10, 'Hezekiah became the father of Manasseh. Manasseh became the father of Amon. Amon became the father of Josiah.', 'Matthew 1:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['josiah', 'father', 'manasseh', 'became', 'amon', 'hezekiah']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 11, 'Josiah became the father of Jechoniah and his brothers, at the time of the exile to Babylon.', 'Matthew 1:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'babylon', 'josiah', 'jechoniah', 'father', 'brothers', 'exile', 'became']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 12, 'After the exile to Babylon, Jechoniah became the father of Shealtiel. Shealtiel became the father of Zerubbabel.', 'Matthew 1:12', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['zerubbabel', 'after', 'babylon', 'shealtiel', 'jechoniah', 'exile', 'father', 'became']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 13, 'Zerubbabel became the father of Abiud. Abiud became the father of Eliakim. Eliakim became the father of Azor.', 'Matthew 1:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['zerubbabel', 'abiud', 'eliakim', 'azor', 'father', 'became']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 14, 'Azor became the father of Zadok. Zadok became the father of Achim. Achim became the father of Eliud.', 'Matthew 1:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['azor', 'eliud', 'zadok', 'father', 'became', 'achim']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 15, 'Eliud became the father of Eleazar. Eleazar became the father of Matthan. Matthan became the father of Jacob.', 'Matthew 1:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['matthan', 'jacob', 'eliud', 'father', 'eleazar', 'became']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 16, 'Jacob became the father of Joseph, the husband of Mary, from whom was born Jesus, who is called Christ.', 'Matthew 1:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['husband', 'joseph', 'called', 'jesus', 'jacob', 'mary', 'father', 'born', 'became', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 17, 'So all the generations from Abraham to David are fourteen generations; from David to the exile to Babylon fourteen generations; and from the carrying away to Babylon to the Christ, fourteen generations.', 'Matthew 1:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['generations', 'babylon', 'david', 'fourteen', 'generations;', 'away', 'exile', 'christ', 'carrying', 'abraham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 18, 'Now the birth of Jesus Christ was like this: After his mother, Mary, was engaged to Joseph, before they came together, she was found pregnant by the Holy Spirit.', 'Matthew 1:18', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['together', 'found', 'spirit', 'they', 'this:', 'after', 'mother', 'jesus', 'joseph', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 19, 'Joseph, her husband, being a righteous man, and not willing to make her a public example, intended to put her away secretly.', 'Matthew 1:19', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['husband', 'public', 'intended', 'secretly', 'joseph', 'make', 'example', 'being', 'away', 'righteous']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 20, 'But when he thought about these things, behold, an angel of the Lord appeared to him in a dream, saying, “Joseph, son of David, don’t be afraid to take to yourself Mary, your wife, for that which is conceived in her is of the Holy Spirit.', 'Matthew 1:20', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['saying', 'lord', 'angel', 'your', 'holy', 'conceived', 'things', 'spirit', 'which', 'david']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 21, 'She shall give birth to a son. You shall call his name Jesus, for it is he who shall save his people from their sins.”', 'Matthew 1:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'name', 'save', 'shall', 'give', 'call', 'jesus', 'sins', 'birth', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 22, 'Now all this has happened, that it might be fulfilled which was spoken by the Lord through the prophet, saying,', 'Matthew 1:22', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'saying', 'which', 'fulfilled', 'spoken', 'this', 'that', 'happened', 'prophet', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 23, '“Behold, the virgin shall be with child,
and shall give birth to a son.
They shall call his name Immanuel”;
which is, being interpreted, “God with us.”', 'Matthew 1:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'name', 'virgin', 'which', 'shall', 'give', 'call', 'interpreted', '“god', 'child']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 24, 'Joseph arose from his sleep, and did as the angel of the Lord commanded him, and took his wife to himself;', 'Matthew 1:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['joseph', 'took', 'arose', 'angel', 'wife', 'himself;', 'commanded', 'lord', 'sleep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_1}', 25, 'and didn’t know her sexually until she had given birth to her firstborn son. He named him Jesus.', 'Matthew 1:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['named', 'given', 'jesus', 'know', 'until', 'didn’t', 'birth', 'sexually', 'firstborn']::TEXT[], NOW());

-- Matthew Chapter 2 (23 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 1, 'Now when Jesus was born in Bethlehem of Judea in the days of King Herod, behold, wise men from the east came to Jerusalem, saying,', 'Matthew 2:1', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['herod', 'jerusalem', 'saying', 'jesus', 'bethlehem', 'days', 'king', 'judea', 'east', 'born']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 2, '“Where is he who is born King of the Jews? For we saw his star in the east, and have come to worship him.”', 'Matthew 2:2', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['worship', 'jews', '“where', 'king', 'east', 'have', 'come', 'born', 'star']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 3, 'When King Herod heard it, he was troubled, and all Jerusalem with him.', 'Matthew 2:3', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['herod', 'jerusalem', 'king', 'troubled', 'heard', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 4, 'Gathering together all the chief priests and scribes of the people, he asked them where the Christ would be born.', 'Matthew 2:4', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['together', 'asked', 'gathering', 'scribes', 'would', 'priests', 'born', 'where', 'them', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 5, 'They said to him, “In Bethlehem of Judea, for this is written through the prophet,', 'Matthew 2:5', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['they', 'written', 'bethlehem', 'judea', 'this', 'said', 'prophet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 6, '‘You Bethlehem, land of Judah,
are in no way least among the princes of Judah:
for out of you shall come a governor,
who shall shepherd my people, Israel.’”', 'Matthew 2:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['princes', 'governor', 'land', 'judah:', 'bethlehem', 'shall', 'shepherd', 'least', 'judah', 'among']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 7, 'Then Herod secretly called the wise men, and learned from them exactly what time the star appeared.', 'Matthew 2:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['herod', 'time', 'secretly', 'what', 'exactly', 'star', 'them', 'then', 'appeared', 'wise']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 8, 'He sent them to Bethlehem, and said, “Go and search diligently for the young child. When you have found him, bring me word, so that I also may come and worship him.”', 'Matthew 2:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'worship', 'bethlehem', 'diligently', 'bring', 'word', 'child', 'said', 'have', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 9, 'They, having heard the king, went their way; and behold, the star, which they saw in the east, went before them, until it came and stood over where the young child was.', 'Matthew 2:9', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'went', 'until', 'east', 'them', 'over', 'which', 'child', 'heard', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 10, 'When they saw the star, they rejoiced with exceedingly great joy.', 'Matthew 2:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'rejoiced', 'exceedingly', 'when', 'great', 'star']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 11, 'They came into the house and saw the young child with Mary, his mother, and they fell down and worshiped him. Opening their treasures, they offered to him gifts: gold, frankincense, and myrrh.', 'Matthew 2:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'they', 'their', 'mother', 'gold', 'myrrh', 'opening', 'mary', 'worshiped', 'child']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 12, 'Being warned in a dream that they shouldn’t return to Herod, they went back to their own country another way.', 'Matthew 2:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'return', 'herod', 'their', 'dream', 'went', 'another', 'back', 'being', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 13, 'Now when they had departed, behold, an angel of the Lord appeared to Joseph in a dream, saying, “Arise and take the young child and his mother, and flee into Egypt, and stay there until I tell you, for Herod will seek the young child to destroy him.”', 'Matthew 2:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'herod', 'joseph', 'saying', 'until', 'angel', 'seek', 'egypt', 'take', 'will']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 14, 'He arose and took the young child and his mother by night, and departed into Egypt,', 'Matthew 2:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['mother', 'egypt', 'took', 'night', 'arose', 'child', 'departed', 'young']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 15, 'and was there until the death of Herod; that it might be fulfilled which was spoken by the Lord through the prophet, saying, “Out of Egypt I called my son.”', 'Matthew 2:15', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['herod;', 'might', 'saying', 'which', 'egypt', 'fulfilled', 'death', 'until', 'spoken', '“out']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 16, 'Then Herod, when he saw that he was mocked by the wise men, was exceedingly angry, and sent out, and killed all the male children who were in Bethlehem and in all the surrounding countryside, from two years old and under, according to the exact time which he had learned from the wise men.', 'Matthew 2:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['herod', 'surrounding', 'time', 'exceedingly', 'countryside', 'then', 'wise', 'were', 'children', 'which']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 17, 'Then that which was spoken by Jeremiah the prophet was fulfilled, saying,', 'Matthew 2:17', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['saying', 'which', 'fulfilled', 'spoken', 'jeremiah', 'that', 'then', 'prophet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 18, '“A voice was heard in Ramah,
lamentation, weeping and great mourning,
Rachel weeping for her children;
she wouldn’t be comforted,
because they are no more.”', 'Matthew 2:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['ramah', 'comforted', 'voice', 'they', 'because', 'lamentation', 'children;', 'wouldn’t', 'heard', 'great']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 19, 'But when Herod was dead, behold, an angel of the Lord appeared in a dream to Joseph in Egypt, saying,', 'Matthew 2:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['herod', 'joseph', 'dream', 'egypt', 'saying', 'angel', 'dead', 'when', 'behold', 'appeared']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 20, '“Arise and take the young child and his mother, and go into the land of Israel, for those who sought the young child’s life are dead.”', 'Matthew 2:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['land', 'mother', 'sought', 'child’s', 'life', 'take', 'child', 'those', 'dead', 'israel']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 21, 'He arose and took the young child and his mother, and came into the land of Israel.', 'Matthew 2:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['land', 'mother', 'took', 'arose', 'child', 'israel', 'came', 'young']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 22, 'But when he heard that Archelaus was reigning over Judea in the place of his father, Herod, he was afraid to go there. Being warned in a dream, he withdrew into the region of Galilee,', 'Matthew 2:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'withdrew', 'herod', 'dream', 'reigning', 'place', 'judea', 'afraid', 'there', 'being']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_2}', 23, 'and came and lived in a city called Nazareth; that it might be fulfilled which was spoken through the prophets: “He will be called a Nazarene.”', 'Matthew 2:23', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['city', 'might', 'lived', 'which', 'will', 'fulfilled', 'spoken', 'nazareth;', 'nazarene', 'prophets:']::TEXT[], NOW());

-- Matthew Chapter 3 (17 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 1, 'In those days, John the Baptizer came, preaching in the wilderness of Judea, saying,', 'Matthew 3:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['wilderness', 'john', 'saying', 'days', 'judea', 'those', 'baptizer', 'preaching', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 2, '“Repent, for the Kingdom of Heaven is at hand!”', 'Matthew 3:2', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['“repent', 'hand', 'heaven', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 3, 'For this is he who was spoken of by Isaiah the prophet, saying,
“The voice of one crying in the wilderness,
make ready the way of the Lord.
Make his paths straight.”', 'Matthew 3:3', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['voice', 'isaiah', '“the', 'wilderness', 'saying', 'ready', 'spoken', 'make', 'crying', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 4, 'Now John himself wore clothing made of camel’s hair, with a leather belt around his waist. His food was locusts and wild honey.', 'Matthew 3:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['wore', 'camel’s', 'john', 'around', 'locusts', 'himself', 'leather', 'honey', 'belt', 'food']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 5, 'Then people from Jerusalem, all of Judea, and all the region around the Jordan went out to him.', 'Matthew 3:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'around', 'judea', 'region', 'jerusalem', 'then', 'jordan', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 6, 'They were baptized by him in the Jordan, confessing their sins.', 'Matthew 3:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['confessing', 'they', 'baptized', 'their', 'sins', 'jordan', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 7, 'But when he saw many of the Pharisees and Sadducees coming for his baptism, he said to them, “You offspring of vipers, who warned you to flee from the wrath to come?', 'Matthew 3:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['wrath', 'warned', 'flee', 'coming', 'vipers', 'many', '“you', 'said', 'come', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 8, 'Therefore produce fruit worthy of repentance!', 'Matthew 3:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'repentance', 'fruit', 'worthy', 'produce']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 9, 'Don’t think to yourselves, ‘We have Abraham for our father,’ for I tell you that God is able to raise up children to Abraham from these stones.', 'Matthew 3:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'think', 'stones', 'tell', 'raise', 'these', 'have', 'able', 'father', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 10, '“Even now the ax lies at the root of the trees. Therefore every tree that doesn’t produce good fruit is cut down, and cast into the fire.', 'Matthew 3:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['root', 'tree', 'fire', 'therefore', 'down', '“even', 'fruit', 'good', 'lies', 'every']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 11, 'I indeed baptize you in water for repentance, but he who comes after me is mightier than I, whose shoes I am not worthy to carry. He will baptize you in the Holy Spirit.', 'Matthew 3:11', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['mightier', 'spirit', 'than', 'baptize', 'repentance', 'after', 'comes', 'worthy', 'will', 'whose']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 12, 'His winnowing fork is in his hand, and he will thoroughly cleanse his threshing floor. He will gather his wheat into the barn, but the chaff he will burn up with unquenchable fire.”', 'Matthew 3:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['winnowing', 'threshing', 'fire', 'barn', 'chaff', 'gather', 'will', 'fork', 'cleanse', 'unquenchable']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 13, 'Then Jesus came from Galilee to the Jordan to John, to be baptized by him.', 'Matthew 3:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['baptized', 'john', 'jesus', 'galilee', 'then', 'jordan', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 14, 'But John would have hindered him, saying, “I need to be baptized by you, and you come to me?”', 'Matthew 3:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['need', 'baptized', 'john', 'saying', 'would', 'hindered', 'have', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 15, 'But Jesus, answering, said to him,
“Allow it now, for this is the fitting way for us to fulfill all righteousness.” Then he allowed him.', 'Matthew 3:15', 'WEB', ARRAY['Prophecy', 'Righteousness']::TEXT[], ARRAY['righteousness', 'allowed', 'jesus', '“allow', 'fulfill', 'this', 'said', 'fitting', 'then', 'answering']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 16, 'Jesus, when he was baptized, went up directly from the water: and behold, the heavens were opened to him. He saw the Spirit of God descending as a dove, and coming on him.', 'Matthew 3:16', 'WEB', ARRAY['Kingdom', 'Holy Spirit']::TEXT[], ARRAY['spirit', 'water:', 'baptized', 'went', 'directly', 'jesus', 'descending', 'coming', 'opened', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_3}', 17, 'Behold, a voice out of the heavens said, “This is my beloved Son, with whom I am well pleased.”', 'Matthew 3:17', 'WEB', ARRAY['Love', 'Kingdom']::TEXT[], ARRAY['voice', 'well', 'beloved', 'pleased', 'said', 'behold', 'heavens', '“this', 'whom']::TEXT[], NOW());

-- Matthew Chapter 4 (25 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 1, 'Then Jesus was led up by the Spirit into the wilderness to be tempted by the devil.', 'Matthew 4:1', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'wilderness', 'jesus', 'tempted', 'then', 'devil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 2, 'When he had fasted forty days and forty nights, he was hungry afterward.', 'Matthew 4:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['hungry', 'fasted', 'days', 'forty', 'when', 'afterward', 'nights']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 3, 'The tempter came and said to him, “If you are the Son of God, command that these stones become bread.”', 'Matthew 4:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['command', 'stones', 'these', 'said', 'that', 'bread', 'tempter', 'came', 'become']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 4, 'But he answered,
“It is written, ‘Man shall not live by bread alone, but by every word that proceeds out of the mouth of God.’”', 'Matthew 4:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'shall', 'mouth', 'proceeds', 'word', 'live', 'every', 'that', 'alone', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 5, 'Then the devil took him into the holy city. He set him on the pinnacle of the temple,', 'Matthew 4:5', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['city', 'took', 'pinnacle', 'temple', 'holy', 'then', 'devil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 6, 'and said to him, “If you are the Son of God, throw yourself down, for it is written, ‘He will put his angels in charge of you.’ and,
‘On their hands they will bear you up,
so that you don’t dash your foot against a stone.’”', 'Matthew 4:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'charge', 'your', 'hands', 'angels', 'will', 'stone', 'yourself', 'dash', 'bear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 7, 'Jesus said to him,
“Again, it is written, ‘You shall not test the Lord, your God.’”', 'Matthew 4:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'jesus', 'shall', '“again', 'said', 'test', 'your', '‘you', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 8, 'Again, the devil took him to an exceedingly high mountain, and showed him all the kingdoms of the world, and their glory.', 'Matthew 4:8', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['their', 'kingdoms', 'high', 'took', 'mountain', 'exceedingly', 'again', 'showed', 'world', 'glory']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 9, 'He said to him, “I will give you all of these things, if you will fall down and worship me.”', 'Matthew 4:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'worship', 'fall', 'will', 'these', 'give', 'said', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 10, 'Then Jesus said to him,
“Get behind me,
Satan! For it is written, ‘You shall worship the Lord your God, and you shall serve him only.’”', 'Matthew 4:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['“get', 'worship', 'written', 'behind', 'jesus', 'shall', 'only', 'said', 'your', 'satan']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 11, 'Then the devil left him, and behold, angels came and served him.', 'Matthew 4:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['served', 'left', 'behold', 'then', 'devil', 'came', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 12, 'Now when Jesus heard that John was delivered up, he withdrew into Galilee.', 'Matthew 4:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['withdrew', 'john', 'jesus', 'delivered', 'galilee', 'heard', 'when', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 13, 'Leaving Nazareth, he came and lived in Capernaum, which is by the sea, in the region of Zebulun and Naphtali,', 'Matthew 4:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['lived', 'which', 'naphtali', 'nazareth', 'region', 'capernaum', 'zebulun', 'leaving', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 14, 'that it might be fulfilled which was spoken through Isaiah the prophet, saying,', 'Matthew 4:14', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'isaiah', 'saying', 'which', 'fulfilled', 'spoken', 'that', 'prophet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 15, '“The land of Zebulun and the land of Naphtali,
toward the sea, beyond the Jordan,
Galilee of the Gentiles,', 'Matthew 4:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['land', 'jordan', 'gentiles', 'toward', 'galilee', 'naphtali', 'beyond', 'zebulun', '“the']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 16, 'the people who sat in darkness saw a great light,
to those who sat in the region and shadow of death,
to them light has dawned.”', 'Matthew 4:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['darkness', 'light', 'shadow', 'death', 'those', 'dawned', 'region', 'great', 'them', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 17, 'From that time, Jesus began to preach, and to say,
“Repent! For the Kingdom of Heaven is at hand.”', 'Matthew 4:17', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['heaven', 'time', 'preach', 'jesus', 'hand', 'began', 'that', '“repent', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 18, 'Walking by the sea of Galilee, he saw two brothers: Simon, who is called Peter, and Andrew, his brother, casting a net into the sea; for they were fishermen.', 'Matthew 4:18', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['fishermen', 'they', 'sea;', 'casting', 'walking', 'brother', 'peter', 'brothers:', 'galilee', 'simon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 19, 'He said to them,
“Come after me, and I will make you fishers for men.”', 'Matthew 4:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['“come', 'after', 'fishers', 'will', 'make', 'said', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 20, 'They immediately left their nets and followed him.', 'Matthew 4:20', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'their', 'they', 'left', 'immediately', 'nets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 21, 'Going on from there, he saw two other brothers, James the son of Zebedee, and John his brother, in the boat with Zebedee their father, mending their nets. He called them.', 'Matthew 4:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['zebedee', 'their', 'going', 'john', 'james', 'brother', 'other', 'there', 'father', 'brothers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 22, 'They immediately left the boat and their father, and followed him.', 'Matthew 4:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'they', 'their', 'left', 'immediately', 'father', 'boat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 23, 'Jesus went about in all Galilee, teaching in their synagogues, preaching the Good News of the Kingdom, and healing every disease and every sickness among the people.', 'Matthew 4:23', 'WEB', ARRAY['Kingdom', 'Teaching', 'Miracle']::TEXT[], ARRAY['synagogues', 'their', 'teaching', 'went', 'news', 'jesus', 'sickness', 'good', 'healing', 'galilee']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 24, 'The report about him went out into all Syria. They brought to him all who were sick, afflicted with various diseases and torments, possessed with demons, epileptics, and paralytics; and he healed them.', 'Matthew 4:24', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['they', 'demons', 'possessed', 'went', 'them', 'sick', 'torments', 'epileptics', 'healed', 'syria']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_4}', 25, 'Great multitudes from Galilee, Decapolis, Jerusalem, Judea and from beyond the Jordan followed him.', 'Matthew 4:25', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['beyond', 'followed', 'great', 'multitudes', 'judea', 'galilee', 'jerusalem', 'decapolis', 'jordan']::TEXT[], NOW());

-- Matthew Chapter 5 (48 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 1, 'Seeing the multitudes, he went up onto the mountain. When he had sat down, his disciples came to him.', 'Matthew 5:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['went', 'multitudes', 'onto', 'mountain', 'seeing', 'when', 'down', 'disciples', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 2, 'He opened his mouth and taught them, saying,', 'Matthew 5:2', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['saying', 'taught', 'opened', 'them', 'mouth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 3, '“Blessed are the poor in spirit,
for theirs is the Kingdom of Heaven.', 'Matthew 5:3', 'WEB', ARRAY['Kingdom', 'Holy Spirit']::TEXT[], ARRAY['spirit', 'theirs', 'poor', '“blessed', 'heaven', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 4, 'Blessed are those who mourn,
for they shall be comforted.', 'Matthew 5:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['comforted', 'they', 'shall', 'mourn', 'those', 'blessed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 5, 'Blessed are the gentle,
for they shall inherit the earth.', 'Matthew 5:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'shall', 'gentle', 'blessed', 'earth', 'inherit']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 6, 'Blessed are those who hunger and thirst after righteousness,

for they shall be filled.', 'Matthew 5:6', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['righteousness', 'they', 'after', 'shall', 'filled', 'thirst', 'hunger', 'those', 'blessed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 7, 'Blessed are the merciful,
for they shall obtain mercy.', 'Matthew 5:7', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['they', 'mercy', 'shall', 'blessed', 'merciful', 'obtain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 8, 'Blessed are the pure in heart,
for they shall see God.', 'Matthew 5:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'shall', 'blessed', 'heart', 'pure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 9, 'Blessed are the peacemakers,
for they shall be called children of God.', 'Matthew 5:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'they', 'shall', 'blessed', 'peacemakers', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 10, 'Blessed are those who have been persecuted for righteousness’ sake,

for theirs is the Kingdom of Heaven.', 'Matthew 5:10', 'WEB', ARRAY['Kingdom', 'Righteousness']::TEXT[], ARRAY['heaven', 'been', 'theirs', 'those', 'blessed', 'have', 'persecuted', 'righteousness’', 'kingdom', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 11, '“Blessed are you when people reproach you, persecute you, and say all kinds of evil against you falsely, for my sake.', 'Matthew 5:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['falsely', 'evil', 'against', '“blessed', 'when', 'kinds', 'reproach', 'people', 'persecute', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 12, 'Rejoice, and be exceedingly glad, for great is your reward in heaven. For that is how they persecuted the prophets who were before you.', 'Matthew 5:12', 'WEB', ARRAY['Kingdom', 'Prophecy']::TEXT[], ARRAY['reward', 'they', 'rejoice', 'exceedingly', 'persecuted', 'glad', 'your', 'prophets', 'great', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 13, '“You are the salt of the earth, but if the salt has lost its flavor, with what will it be salted? It is then good for nothing, but to be cast out and trodden under the feet of men.', 'Matthew 5:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['flavor', 'trodden', 'what', 'salted', 'feet', 'will', 'under', 'good', '“you', 'earth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 14, 'You are the light of the world. A city located on a hill can’t be hidden.', 'Matthew 5:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'hidden', 'can’t', 'light', 'located', 'hill', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 15, 'Neither do you light a lamp, and put it under a measuring basket, but on a stand; and it shines to all who are in the house.', 'Matthew 5:15', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['house', 'under', 'light', 'basket', 'neither', 'lamp', 'stand;', 'shines', 'measuring']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 16, 'Even so, let your light shine before men; that they may see your good works, and glorify your Father who is in heaven.', 'Matthew 5:16', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['heaven', 'they', 'men;', 'light', 'good', 'even', 'your', 'works', 'glorify', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 17, '“Don’t think that I came to destroy the law or the prophets. I didn’t come to destroy, but to fulfill.', 'Matthew 5:17', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['think', '“don’t', 'fulfill', 'didn’t', 'come', 'prophets', 'that', 'destroy', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 18, 'For most certainly, I tell you, until heaven and earth pass away, not even one smallest letter
or one tiny pen stroke
shall in any way pass away from the law, until all things are accomplished.', 'Matthew 5:18', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['most', 'things', 'tell', 'tiny', 'shall', 'pass', 'until', 'even', 'earth', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 19, 'Whoever, therefore, shall break one of these least commandments, and teach others to do so, shall be called least in the Kingdom of Heaven; but whoever shall do and teach them shall be called great in the Kingdom of Heaven.', 'Matthew 5:19', 'WEB', ARRAY['Kingdom', 'Teaching']::TEXT[], ARRAY['teach', 'therefore', 'shall', 'these', 'break', 'least', 'others', 'whoever', 'commandments', 'heaven;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 20, 'For I tell you that unless your righteousness exceeds that of the scribes and Pharisees, there is no way you will enter into the Kingdom of Heaven.', 'Matthew 5:20', 'WEB', ARRAY['Kingdom', 'Righteousness']::TEXT[], ARRAY['unless', 'righteousness', 'scribes', 'tell', 'will', 'exceeds', 'there', 'your', 'enter', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 21, '“You have heard that it was said to the ancient ones, ‘You shall not murder;’
and ‘Whoever murders will be in danger of the judgment.’', 'Matthew 5:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['‘whoever', 'danger', 'shall', 'will', 'murder;’', 'murders', '“you', 'said', 'have', 'judgment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 22, 'But I tell you, that everyone who is angry with his brother without a cause


will be in danger of the judgment; and whoever says to his brother, ‘Raca!’

will be in danger of the council; and whoever says, ‘You fool!’ will be in danger of the fire of Gehenna.', 'Matthew 5:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['fire', 'judgment;', 'without', '‘raca', 'tell', 'cause', 'danger', 'will', 'fool', 'brother']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 23, '“If therefore you are offering your gift at the altar, and there remember that your brother has anything against you,', 'Matthew 5:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['remember', 'therefore', 'offering', 'altar', 'gift', 'brother', 'there', 'against', 'your', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 24, 'leave your gift there before the altar, and go your way. First be reconciled to your brother, and then come and offer your gift.', 'Matthew 5:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'leave', 'altar', 'then', 'gift', 'reconciled', 'brother', 'offer', 'there', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 25, 'Agree with your adversary quickly, while you are with him on the way; lest perhaps the prosecutor deliver you to the judge, and the judge deliver you to the officer, and you be cast into prison.', 'Matthew 5:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['officer', 'deliver', 'judge', 'agree', 'prison', 'adversary', 'lest', 'while', 'your', 'way;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 26, 'Most certainly I tell you, you shall by no means get out of there, until you have paid the last penny.', 'Matthew 5:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'means', 'tell', 'shall', 'until', 'penny', 'there', 'have', 'last', 'paid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 27, '“You have heard that it was said,

‘You shall not commit adultery;’', 'Matthew 5:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['shall', '“you', 'said', 'have', 'heard', 'that', 'adultery;’', '‘you', 'commit']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 28, 'but I tell you that everyone who gazes at a woman to lust after her has committed adultery with her already in his heart.', 'Matthew 5:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['committed', 'woman', 'tell', 'after', 'gazes', 'already', 'adultery', 'everyone', 'that', 'heart']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 29, 'If your right eye causes you to stumble, pluck it out and throw it away from you. For it is more profitable for you that one of your members should perish, than for your whole body to be cast into Gehenna.', 'Matthew 5:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['members', 'than', 'profitable', 'should', 'stumble', 'right', 'pluck', 'throw', 'away', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 30, 'If your right hand causes you to stumble, cut it off, and throw it away from you. For it is more profitable for you that one of your members should perish, than for your whole body to be cast into Gehenna.', 'Matthew 5:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['members', 'than', 'profitable', 'should', 'stumble', 'right', 'hand', 'throw', 'away', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 31, '“It was also said, ‘Whoever shall put away his wife, let him give her a writing of divorce,’', 'Matthew 5:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['divorce', '‘whoever', 'shall', 'give', 'wife', 'said', 'away', 'also', 'writing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 32, 'but I tell you that whoever puts away his wife, except for the cause of sexual immorality, makes her an adulteress; and whoever marries her when she is put away commits adultery.', 'Matthew 5:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['immorality', 'tell', 'except', 'cause', 'makes', 'marries', 'adultery', 'wife', 'adulteress;', 'whoever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 33, '“Again you have heard that it was said to them of old time, ‘You shall not make false vows, but shall perform to the Lord your vows,’', 'Matthew 5:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'false', 'shall', '“again', 'make', '‘you', 'vows', 'said', 'have', 'perform']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 34, 'but I tell you, don’t swear at all: neither by heaven, for it is the throne of God;', 'Matthew 5:34', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['all:', 'throne', 'tell', 'god;', 'neither', 'heaven', 'don’t', 'swear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 35, 'nor by the earth, for it is the footstool of his feet; nor by Jerusalem, for it is the city of the great King.', 'Matthew 5:35', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['city', 'feet;', 'great', 'footstool', 'king', 'earth', 'jerusalem']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 36, 'Neither shall you swear by your head, for you can’t make one hair white or black.', 'Matthew 5:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['white', 'can’t', 'shall', 'make', 'neither', 'your', 'black', 'head', 'swear', 'hair']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 37, 'But let your ‘Yes’ be ‘Yes’ and your ‘No’ be ‘No.’ Whatever is more than these is of the evil one.', 'Matthew 5:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['‘no’', 'than', 'whatever', 'these', 'your', '‘yes’', 'evil', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 38, '“You have heard that it was said, ‘An eye for an eye, and a tooth for a tooth.’', 'Matthew 5:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['tooth', '“you', 'said', 'have', 'heard', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 39, 'But I tell you, don’t resist him who is evil; but whoever strikes you on your right cheek, turn to him the other also.', 'Matthew 5:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['evil;', 'tell', 'resist', 'whoever', 'right', 'other', 'cheek', 'your', 'turn', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 40, 'If anyone sues you to take away your coat, let him have your cloak also.', 'Matthew 5:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'take', 'sues', 'away', 'coat', 'have', 'your', 'cloak', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 41, 'Whoever compels you to go one mile, go with him two.', 'Matthew 5:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['whoever', 'mile', 'compels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 42, 'Give to him who asks you, and don’t turn away him who desires to borrow from you.', 'Matthew 5:42', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['desires', 'give', 'away', 'asks', 'don’t', 'turn', 'borrow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 43, '“You have heard that it was said, ‘You shall love your neighbor

and hate your enemy.’', 'Matthew 5:43', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'hate', 'neighbor', 'shall', '“you', 'said', 'have', 'your', 'heard', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 44, 'But I tell you, love your enemies, bless those who curse you, do good to those who hate you, and pray for those who mistreat you and persecute you,', 'Matthew 5:44', 'WEB', ARRAY['Love', 'Prayer']::TEXT[], ARRAY['love', 'hate', 'enemies', 'tell', 'persecute', 'pray', 'good', 'bless', 'those', 'curse']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 45, 'that you may be children of your Father who is in heaven. For he makes his sun to rise on the evil and the good, and sends rain on the just and the unjust.', 'Matthew 5:45', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['just', 'rise', 'children', 'unjust', 'makes', 'rain', 'good', 'your', 'father', 'sends']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 46, 'For if you love those who love you, what reward do you have? Don’t even the tax collectors do the same?', 'Matthew 5:46', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'reward', 'what', 'even', 'those', 'have', 'same', 'don’t', 'collectors']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 47, 'If you only greet your friends, what more do you do than others? Don’t even the tax collectors
do the same?', 'Matthew 5:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['than', 'what', 'friends', 'only', 'greet', 'others', 'even', 'same', 'your', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_5}', 48, 'Therefore you shall be perfect, just as your Father in heaven is perfect.', 'Matthew 5:48', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['just', 'perfect', 'therefore', 'shall', 'your', 'father', 'heaven']::TEXT[], NOW());

-- Matthew Chapter 6 (34 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 1, '“Be careful that you don’t do your charitable giving before men, to be seen by them, or else you have no reward from your Father who is in heaven.', 'Matthew 6:1', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['charitable', 'heaven', 'reward', 'seen', 'careful', 'else', 'have', 'before', 'your', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 2, 'Therefore when you do merciful deeds, don’t sound a trumpet before yourself, as the hypocrites do in the synagogues and in the streets, that they may get glory from men. Most certainly I tell you, they have received their reward.', 'Matthew 6:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'they', 'merciful', 'hypocrites', 'certainly', 'deeds', 'yourself', 'synagogues', 'therefore', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 3, 'But when you do merciful deeds, don’t let your left hand know what your right hand does,', 'Matthew 6:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'does', 'know', 'deeds', 'left', 'right', 'hand', 'your', 'when', 'merciful']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 4, 'so that your merciful deeds may be in secret, then your Father who sees in secret will reward you openly.', 'Matthew 6:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['reward', 'openly', 'secret', 'will', 'deeds', 'sees', 'your', 'father', 'merciful', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 5, '“When you pray, you shall not be as the hypocrites, for they love to stand and pray in the synagogues and in the corners of the streets, that they may be seen by men. Most certainly, I tell you, they have received their reward.', 'Matthew 6:5', 'WEB', ARRAY['Love', 'Prayer']::TEXT[], ARRAY['most', 'they', 'seen', 'hypocrites', 'certainly', 'love', 'shall', 'pray', 'synagogues', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 6, 'But you, when you pray, enter into your inner room, and having shut your door, pray to your Father who is in secret, and your Father who sees in secret will reward you openly.', 'Matthew 6:6', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['reward', 'openly', 'secret', 'pray', 'will', 'room', 'inner', 'sees', 'enter', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 7, 'In praying, don’t use vain repetitions, as the Gentiles do; for they think that they will be heard for their much speaking.', 'Matthew 6:7', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['praying', 'they', 'think', 'their', 'repetitions', 'gentiles', 'will', 'vain', 'heard', 'speaking']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 8, 'Therefore don’t be like them, for your Father knows what things you need, before you ask him.', 'Matthew 6:8', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['things', 'need', 'therefore', 'what', 'knows', 'your', 'father', 'before', 'like', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 9, 'Pray like this: ‘Our Father in heaven, may your name be kept holy.', 'Matthew 6:9', 'WEB', ARRAY['Prayer', 'Kingdom', 'Righteousness']::TEXT[], ARRAY['‘our', 'this:', 'name', 'pray', 'father', 'your', 'holy', 'like', 'heaven', 'kept']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 10, 'Let your Kingdom come. Let your will be done, as in heaven, so on earth.', 'Matthew 6:10', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['done', 'will', 'earth', 'come', 'your', 'heaven', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 11, 'Give us today our daily bread.', 'Matthew 6:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['give', 'daily', 'today', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 12, 'Forgive us our debts, as we also forgive our debtors.', 'Matthew 6:12', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['forgive', 'debts', 'also', 'debtors']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 13, 'Bring us not into temptation, but deliver us from the evil one. For yours is the Kingdom, the power, and the glory forever. Amen.’', 'Matthew 6:13', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['deliver', 'forever', 'temptation', 'kingdom', 'amen', 'power', 'evil', 'glory', 'yours', 'bring']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 14, '“For if you forgive men their trespasses, your heavenly Father will also forgive you.', 'Matthew 6:14', 'WEB', ARRAY['Kingdom', 'Forgiveness']::TEXT[], ARRAY['their', 'will', 'trespasses', 'heavenly', '“for', 'your', 'father', 'also', 'forgive']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 15, 'But if you don’t forgive men their trespasses, neither will your Father forgive your trespasses.', 'Matthew 6:15', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['their', 'will', 'trespasses', 'neither', 'your', 'father', 'forgive', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 16, '“Moreover when you fast, don’t be like the hypocrites, with sad faces. For they disfigure their faces, that they may be seen by men to be fasting. Most certainly I tell you, they have received their reward.', 'Matthew 6:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'they', 'seen', 'disfigure', '“moreover', 'faces', 'hypocrites', 'certainly', 'fasting', 'like']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 17, 'But you, when you fast, anoint your head, and wash your face;', 'Matthew 6:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['anoint', 'wash', 'fast', 'your', 'when', 'face;', 'head']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 18, 'so that you are not seen by men to be fasting, but by your Father who is in secret, and your Father, who sees in secret, will reward you.', 'Matthew 6:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['reward', 'seen', 'secret', 'will', 'fasting', 'sees', 'father', 'your', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 19, '“Don’t lay up treasures for yourselves on the earth, where moth and rust consume, and where thieves break through and steal;', 'Matthew 6:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['moth', 'steal;', 'rust', 'thieves', '“don’t', 'consume', 'break', 'earth', 'treasures', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 20, 'but lay up for yourselves treasures in heaven, where neither moth nor rust consume, and where thieves don’t break through and steal;', 'Matthew 6:20', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['moth', 'steal;', 'rust', 'thieves', 'consume', 'where', 'break', 'don’t', 'neither', 'treasures']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 21, 'for where your treasure is, there your heart will be also.', 'Matthew 6:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'there', 'also', 'your', 'heart', 'where', 'treasure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 22, '“The lamp of the body is the eye. If therefore your eye is sound, your whole body will be full of light.', 'Matthew 6:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'will', 'light', 'full', 'body', 'whole', 'your', 'sound', '“the', 'lamp']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 23, 'But if your eye is evil, your whole body will be full of darkness. If therefore the light that is in you is darkness, how great is the darkness!', 'Matthew 6:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['darkness', 'therefore', 'will', 'light', 'full', 'body', 'whole', 'your', 'great', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 24, '“No one can serve two masters, for either he will hate the one and love the other; or else he will be devoted to one and despise the other. You can’t serve both God and Mammon.', 'Matthew 6:24', 'WEB', ARRAY['Love', 'Teaching']::TEXT[], ARRAY['despise', 'love', 'hate', 'can’t', 'masters', 'will', 'either', 'else', 'both', 'mammon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 25, 'Therefore I tell you, don’t be anxious for your life: what you will eat, or what you will drink; nor yet for your body, what you will wear. Isn’t life more than food, and the body more than clothing?', 'Matthew 6:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'wear', 'therefore', 'what', 'than', 'tell', 'life', 'anxious', 'will', 'life:']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 26, 'See the birds of the sky, that they don’t sow, neither do they reap, nor gather into barns. Your heavenly Father feeds them. Aren’t you of much more value than they?', 'Matthew 6:26', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'feeds', 'than', 'gather', 'reap', 'barns', 'birds', 'heavenly', 'value', 'neither']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 27, '“Which of you, by being anxious, can add one moment
to his lifespan?', 'Matthew 6:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['“which', 'lifespan', 'anxious', 'being', 'moment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 28, 'Why are you anxious about clothing? Consider the lilies of the field, how they grow. They don’t toil, neither do they spin,', 'Matthew 6:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'anxious', 'spin', 'field', 'toil', 'lilies', 'grow', 'neither', 'consider', 'clothing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 29, 'yet I tell you that even Solomon in all his glory was not dressed like one of these.', 'Matthew 6:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['tell', 'these', 'even', 'dressed', 'that', 'like', 'glory', 'solomon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 30, 'But if God so clothes the grass of the field, which today exists, and tomorrow is thrown into the oven, won’t he much more clothe you, you of little faith?', 'Matthew 6:30', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['clothes', 'exists', 'which', 'more', 'faith', 'field', 'little', 'today', 'oven', 'thrown']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 31, '“Therefore don’t be anxious, saying, ‘What will we eat?’, ‘What will we drink?’ or, ‘With what will we be clothed?’', 'Matthew 6:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['clothed', '‘with', 'what', '“therefore', 'saying', 'anxious', 'will', 'drink', '‘what', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 32, 'For the Gentiles seek after all these things; for your heavenly Father knows that you need all these things.', 'Matthew 6:32', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['things', 'need', 'after', 'seek', 'gentiles', 'these', 'knows', 'heavenly', 'your', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 33, 'But seek first God’s Kingdom, and his righteousness; and all these things will be given to you as well.', 'Matthew 6:33', 'WEB', ARRAY['Kingdom', 'Righteousness']::TEXT[], ARRAY['first', 'things', 'well', 'seek', 'given', 'these', 'god’s', 'will', 'righteousness;', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_6}', 34, 'Therefore don’t be anxious for tomorrow, for tomorrow will be anxious for itself. Each day’s own evil is sufficient.', 'Matthew 6:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['day’s', 'therefore', 'anxious', 'will', 'each', 'sufficient', 'itself', 'evil', 'tomorrow', 'don’t']::TEXT[], NOW());

-- Matthew Chapter 7 (29 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 1, '“Don’t judge, so that you won’t be judged.', 'Matthew 7:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['judge', '“don’t', 'that', 'judged', 'won’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 2, 'For with whatever judgment you judge, you will be judged; and with whatever measure you measure, it will be measured to you.', 'Matthew 7:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['measured', 'judge', 'whatever', 'will', 'judgment', 'judged;', 'measure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 3, 'Why do you see the speck that is in your brother’s eye, but don’t consider the beam that is in your own eye?', 'Matthew 7:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['brother’s', 'beam', 'speck', 'consider', 'your', 'that', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 4, 'Or how will you tell your brother, ‘Let me remove the speck from your eye;’ and behold, the beam is in your own eye?', 'Matthew 7:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['beam', 'tell', 'will', 'brother', 'speck', 'eye;’', 'your', 'behold', 'remove', '‘let']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 5, 'You hypocrite! First remove the beam out of your own eye, and then you can see clearly to remove the speck out of your brother’s eye.', 'Matthew 7:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'clearly', 'hypocrite', 'brother’s', 'beam', 'speck', 'your', 'then', 'remove']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 6, '“Don’t give that which is holy to the dogs, neither throw your pearls before the pigs, lest perhaps they trample them under their feet, and turn and tear you to pieces.', 'Matthew 7:6', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['pearls', 'they', 'tear', 'lest', 'give', 'your', 'trample', 'holy', 'them', 'pieces']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 7, '“Ask, and it will be given you. Seek, and you will find. Knock, and it will be opened for you.', 'Matthew 7:7', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['find', 'seek', 'given', 'will', '“ask', 'opened', 'knock']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 8, 'For everyone who asks receives. He who seeks finds. To him who knocks it will be opened.', 'Matthew 7:8', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['knocks', 'will', 'seeks', 'finds', 'everyone', 'opened', 'asks', 'receives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 9, 'Or who is there among you, who, if his son asks him for bread, will give him a stone?', 'Matthew 7:9', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['will', 'give', 'stone', 'there', 'among', 'asks', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 10, 'Or if he asks for a fish, who will give him a serpent?', 'Matthew 7:10', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['serpent', 'will', 'give', 'asks', 'fish']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 11, 'If you then, being evil, know how to give good gifts to your children, how much more will your Father who is in heaven give good things to those who ask him!', 'Matthew 7:11', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['things', 'children', 'give', 'will', 'know', 'good', 'those', 'being', 'evil', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 12, 'Therefore whatever you desire for men to do to you, you shall also do to them; for this is the law and the prophets.', 'Matthew 7:12', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['therefore', 'whatever', 'shall', 'this', 'also', 'prophets', 'them;', 'desire']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 13, '“Enter in by the narrow gate; for wide is the gate and broad is the way that leads to destruction, and many are those who enter in by it.', 'Matthew 7:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['leads', 'destruction', 'narrow', 'broad', 'wide', 'many', 'those', 'gate;', 'enter', '“enter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 14, 'How
narrow is the gate, and restricted is the way that leads to life! Few are those who find it.', 'Matthew 7:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['leads', 'narrow', 'find', 'restricted', 'life', 'those', 'that', 'gate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 15, '“Beware of false prophets, who come to you in sheep’s clothing, but inwardly are ravening wolves.', 'Matthew 7:15', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['sheep’s', 'ravening', 'false', 'inwardly', 'come', 'wolves', 'prophets', 'clothing', '“beware']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 16, 'By their fruits you will know them. Do you gather grapes from thorns, or figs from thistles?', 'Matthew 7:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'figs', 'thorns', 'gather', 'will', 'know', 'thistles', 'grapes', 'them', 'fruits']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 17, 'Even so, every good tree produces good fruit; but the corrupt tree produces evil fruit.', 'Matthew 7:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'fruit;', 'corrupt', 'fruit', 'good', 'even', 'every', 'produces', 'evil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 18, 'A good tree can’t produce evil fruit, neither can a corrupt tree produce good fruit.', 'Matthew 7:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'corrupt', 'can’t', 'fruit', 'good', 'neither', 'evil', 'produce']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 19, 'Every tree that doesn’t grow good fruit is cut down, and thrown into the fire.', 'Matthew 7:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'fire', 'fruit', 'good', 'every', 'grow', 'that', 'thrown', 'down', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 20, 'Therefore by their fruits you will know them.', 'Matthew 7:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'therefore', 'will', 'know', 'them', 'fruits']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 21, 'Not everyone who says to me, ‘Lord, Lord,’ will enter into the Kingdom of Heaven; but he who does the will of my Father who is in heaven.', 'Matthew 7:21', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['does', 'will', 'kingdom', 'everyone', 'says', 'enter', 'heaven;', 'father', 'heaven', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 22, 'Many will tell me in that day, ‘Lord, Lord, didn’t we prophesy in your name, in your name cast out demons, and in your name do many mighty works?’', 'Matthew 7:22', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['demons', 'name', 'tell', 'will', 'many', 'didn’t', 'your', 'prophesy', 'works', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 23, 'Then I will tell them, ‘I never knew you. Depart from me, you who work iniquity.’', 'Matthew 7:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['depart', 'knew', 'tell', 'will', 'never', 'iniquity', 'work', 'then', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 24, '“Everyone therefore who hears these words of mine, and does them, I will liken him to a wise man, who built his house on a rock.', 'Matthew 7:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['built', 'house', 'therefore', 'mine', '“everyone', 'does', 'liken', 'these', 'will', 'words']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 25, 'The rain came down, the floods came, and the winds blew, and beat on that house; and it didn’t fall, for it was founded on the rock.', 'Matthew 7:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['founded', 'fall', 'floods', 'blew', 'rain', 'winds', 'beat', 'didn’t', 'house;', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 26, 'Everyone who hears these words of mine, and doesn’t do them will be like a foolish man, who built his house on the sand.', 'Matthew 7:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['built', 'foolish', 'house', 'mine', 'these', 'doesn’t', 'will', 'everyone', 'sand', 'words']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 27, 'The rain came down, the floods came, and the winds blew, and beat on that house; and it fell—and great was its fall.”', 'Matthew 7:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['fall', 'floods', 'blew', 'fell—and', 'rain', 'winds', 'beat', 'house;', 'great', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 28, 'When Jesus had finished saying these things, the multitudes were astonished at his teaching,', 'Matthew 7:28', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['things', 'astonished', 'teaching', 'saying', 'jesus', 'these', 'multitudes', 'finished', 'when', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_7}', 29, 'for he taught them with authority, and not like the scribes.', 'Matthew 7:29', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['scribes', 'taught', 'authority', 'like', 'them']::TEXT[], NOW());

-- Matthew Chapter 8 (34 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 1, 'When he came down from the mountain, great multitudes followed him.', 'Matthew 8:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'multitudes', 'mountain', 'when', 'great', 'down', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 2, 'Behold, a leper came to him and worshiped him, saying, “Lord, if you want to, you can make me clean.”', 'Matthew 8:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['want', 'clean', '“lord', 'saying', 'leper', 'make', 'worshiped', 'behold', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 3, 'Jesus stretched out his hand, and touched him, saying,
“I want to. Be made clean.” Immediately his leprosy was cleansed.', 'Matthew 8:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['want', 'clean', 'saying', 'leprosy', 'jesus', 'cleansed', 'stretched', 'hand', 'immediately', 'touched']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 4, 'Jesus said to him,
“See that you tell nobody, but go, show yourself to the priest, and offer the gift that Moses commanded, as a testimony to them.”', 'Matthew 8:4', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['commanded', 'priest', 'testimony', 'tell', 'jesus', 'offer', 'show', 'gift', 'nobody', 'yourself']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 5, 'When he came into Capernaum, a centurion came to him, asking him,', 'Matthew 8:5', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['centurion', 'asking', 'when', 'capernaum', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 6, 'and saying, “Lord, my servant lies in the house paralyzed, grievously tormented.”', 'Matthew 8:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', '“lord', 'saying', 'tormented', 'grievously', 'paralyzed', 'lies', 'servant']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 7, 'Jesus said to him,
“I will come and heal him.”', 'Matthew 8:7', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['heal', 'jesus', 'will', 'said', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 8, 'The centurion answered, “Lord, I’m not worthy for you to come under my roof. Just say the word, and my servant will be healed.', 'Matthew 8:8', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['just', '“lord', 'centurion', 'worthy', 'under', 'will', 'word', 'healed', 'come', 'servant']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 9, 'For I am also a man under authority, having under myself soldiers. I tell this one, ‘Go,’ and he goes; and tell another, ‘Come,’ and he comes; and tell my servant, ‘Do this,’ and he does it.”', 'Matthew 8:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['does', 'tell', 'another', '‘come', 'under', 'authority', 'goes;', 'myself', 'this', 'comes;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 10, 'When Jesus heard it, he marveled, and said to those who followed,
“Most certainly I tell you, I haven’t found so great a faith, not even in Israel.', 'Matthew 8:10', 'WEB', ARRAY['Faith', 'Discipleship']::TEXT[], ARRAY['found', 'followed', 'tell', 'great', 'jesus', 'haven’t', 'marveled', 'even', '“most', 'those']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 11, 'I tell you that many will come from the east and the west, and will sit down with Abraham, Isaac, and Jacob in the Kingdom of Heaven,', 'Matthew 8:11', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['west', 'tell', 'will', 'jacob', 'east', 'many', 'come', 'that', 'heaven', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 12, 'but the children of the Kingdom will be thrown out into the outer darkness. There will be weeping and gnashing of teeth.”', 'Matthew 8:12', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['children', 'darkness', 'weeping', 'will', 'outer', 'there', 'gnashing', 'teeth', 'thrown', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 13, 'Jesus said to the centurion,
“Go your way. Let it be done for you as you have believed.” His servant was healed in that hour.', 'Matthew 8:13', 'WEB', ARRAY['Faith', 'Miracle']::TEXT[], ARRAY['centurion', 'done', 'jesus', 'hour', 'healed', 'said', 'have', 'believed', 'your', 'servant']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 14, 'When Jesus came into Peter’s house, he saw his wife’s mother lying sick with a fever.', 'Matthew 8:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'mother', 'fever', 'jesus', 'sick', 'when', 'lying', 'wife’s', 'came', 'peter’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 15, 'He touched her hand, and the fever left her. She got up and served him.', 'Matthew 8:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['fever', 'left', 'hand', 'touched', 'served']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 16, 'When evening came, they brought to him many possessed with demons. He cast out the spirits with a word, and healed all who were sick;', 'Matthew 8:16', 'WEB', ARRAY['Miracle', 'Holy Spirit']::TEXT[], ARRAY['they', 'demons', 'word', 'sick;', 'many', 'spirits', 'healed', 'brought', 'evening', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 17, 'that it might be fulfilled which was spoken through Isaiah the prophet, saying, “He took our infirmities, and bore our diseases.”', 'Matthew 8:17', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['bore', 'might', 'isaiah', 'saying', 'which', 'fulfilled', 'took', 'spoken', 'infirmities', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 18, 'Now when Jesus saw great multitudes around him, he gave the order to depart to the other side.', 'Matthew 8:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'depart', 'jesus', 'around', 'multitudes', 'side', 'other', 'order', 'when', 'great']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 19, 'A scribe came, and said to him, “Teacher, I will follow you wherever you go.”', 'Matthew 8:19', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['will', 'scribe', 'said', '“teacher', 'follow', 'came', 'wherever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 20, 'Jesus said to him,
“The foxes have holes, and the birds of the sky have nests, but the Son of Man has nowhere to lay his head.”', 'Matthew 8:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['holes', 'jesus', 'birds', 'foxes', 'said', 'have', 'nests', 'head', '“the', 'nowhere']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 21, 'Another of his disciples said to him, “Lord, allow me first to go and bury my father.”', 'Matthew 8:21', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['first', '“lord', 'another', 'bury', 'allow', 'said', 'father', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 22, 'But Jesus said to him,
“Follow me, and leave the dead to bury their own dead.”', 'Matthew 8:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['their', 'leave', '“follow', 'jesus', 'bury', 'dead', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 23, 'When he got into a boat, his disciples followed him.', 'Matthew 8:23', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'disciples', 'when', 'boat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 24, 'Behold, a violent storm came up on the sea, so much that the boat was covered with the waves, but he was asleep.', 'Matthew 8:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['boat', 'asleep', 'waves', 'storm', 'violent', 'covered', 'behold', 'that', 'came', 'much']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 25, 'They came to him, and woke him up, saying, “Save us, Lord! We are dying!”', 'Matthew 8:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'saying', 'dying', '“save', 'woke', 'lord', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 26, 'He said to them,
“Why are you fearful, O you of little faith?”
 Then he got up, rebuked the wind and the sea, and there was a great calm.', 'Matthew 8:26', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['wind', 'faith', 'rebuked', 'there', 'said', '“why', 'calm', 'great', 'then', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 27, 'The men marveled, saying, “What kind of man is this, that even the wind and the sea obey him?”', 'Matthew 8:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['“what', 'saying', 'wind', 'marveled', 'even', 'kind', 'this', 'that', 'obey']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 28, 'When he came to the other side, into the country of the Gergesenes,
 two people possessed by demons met him there, coming out of the tombs, exceedingly fierce, so that nobody could pass that way.', 'Matthew 8:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['demons', 'coming', 'gergesenes', 'fierce', 'side', 'could', 'exceedingly', 'country', 'tombs', 'other']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 29, 'Behold, they cried out, saying, “What do we have to do with you, Jesus, Son of God? Have you come here to torment us before the time?”', 'Matthew 8:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', '“what', 'torment', 'time', 'saying', 'jesus', 'have', 'come', 'behold', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 30, 'Now there was a herd of many pigs feeding far away from them.', 'Matthew 8:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['feeding', 'herd', 'there', 'many', 'pigs', 'away', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 31, 'The demons begged him, saying, “If you cast us out, permit us to go away into the herd of pigs.”', 'Matthew 8:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['demons', 'saying', 'permit', 'begged', 'herd', 'pigs', 'away', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 32, 'He said to them,
“Go!”
They came out, and went into the herd of pigs: and behold, the whole herd of pigs rushed down the cliff into the sea, and died in the water.', 'Matthew 8:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'pigs:', 'cliff', 'down', 'went', 'died', 'water', 'herd', 'pigs', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 33, 'Those who fed them fled, and went away into the city, and told everything, including what happened to those who were possessed with demons.', 'Matthew 8:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'demons', 'what', 'possessed', 'went', 'everything', 'those', 'away', 'told', 'fled']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_8}', 34, 'Behold, all the city came out to meet Jesus. When they saw him, they begged that he would depart from their borders.', 'Matthew 8:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'they', 'depart', 'their', 'meet', 'jesus', 'would', 'borders', 'when', 'behold']::TEXT[], NOW());

-- Matthew Chapter 9 (38 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 1, 'He entered into a boat, and crossed over, and came into his own city.', 'Matthew 9:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'city', 'entered', 'crossed', 'boat', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 2, 'Behold, they brought to him a man who was paralyzed, lying on a bed. Jesus, seeing their faith, said to the paralytic,
“Son, cheer up! Your sins are forgiven you.”', 'Matthew 9:2', 'WEB', ARRAY['Faith', 'Forgiveness']::TEXT[], ARRAY['they', 'their', 'jesus', 'paralytic', '“son', 'behold', 'paralyzed', 'sins', 'forgiven', 'seeing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 3, 'Behold, some of the scribes said to themselves, “This man blasphemes.”', 'Matthew 9:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['blasphemes', 'scribes', 'said', 'some', 'behold', '“this', 'themselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 4, 'Jesus, knowing their thoughts, said,
“Why do you think evil in your hearts?', 'Matthew 9:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'think', 'jesus', 'hearts', 'knowing', 'said', '“why', 'your', 'evil', 'thoughts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 5, 'For which is easier, to say, ‘Your sins are forgiven;’ or to say, ‘Get up, and walk?’', 'Matthew 9:5', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['which', '‘your', 'sins', 'walk', 'easier', 'forgiven;’', '‘get']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 6, 'But that you may know that the Son of Man has authority on earth to forgive sins-” (then he said to the paralytic),
“Get up, and take up your mat, and go to your house.”', 'Matthew 9:6', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['“get', 'sins-”', 'house', '(then', 'authority', 'take', 'know', 'earth', 'said', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 7, 'He arose and departed to his house.', 'Matthew 9:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'arose', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 8, 'But when the multitudes saw it, they marveled and glorified God, who had given such authority to men.', 'Matthew 9:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'given', 'authority', 'multitudes', 'marveled', 'glorified', 'when', 'such']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 9, 'As Jesus passed by from there, he saw a man called Matthew sitting at the tax collection office. He said to him,
“Follow me.” He got up and followed him.', 'Matthew 9:9', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'office', 'passed', '“follow', 'jesus', 'sitting', 'matthew', 'collection', 'there', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 10, 'As he sat in the house, behold, many tax collectors and sinners came and sat down with Jesus and his disciples.', 'Matthew 9:10', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['house', 'sinners', 'jesus', 'many', 'behold', 'down', 'disciples', 'came', 'collectors']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 11, 'When the Pharisees saw it, they said to his disciples, “Why does your teacher eat with tax collectors and sinners?”', 'Matthew 9:11', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['they', 'teacher', 'does', 'collectors', 'sinners', 'said', '“why', 'your', 'when', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 12, 'When Jesus heard it, he said to them,
“Those who are healthy have no need for a physician, but those who are sick do.', 'Matthew 9:12', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['“those', 'need', 'jesus', 'physician', 'sick', 'healthy', 'those', 'said', 'have', 'heard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 13, 'But you go and learn what this means: ‘I desire mercy, and not sacrifice,’
for I came not to call the righteous, but sinners to repentance.”', 'Matthew 9:13', 'WEB', ARRAY['Forgiveness', 'Righteousness', 'Grace']::TEXT[], ARRAY['sacrifice', 'means:', 'what', 'sinners', 'repentance', 'call', 'learn', 'this', 'righteous', 'desire']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 14, 'Then John’s disciples came to him, saying, “Why do we and the Pharisees fast often, but your disciples don’t fast?”', 'Matthew 9:14', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['saying', 'don’t', '“why', 'fast', 'often', 'your', 'then', 'pharisees', 'disciples', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 15, 'Jesus said to them,
“Can the friends of the bridegroom mourn, as long as the bridegroom is with them? But the days will come when the bridegroom will be taken away from them, and then they will fast.', 'Matthew 9:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['taken', 'they', 'long', 'jesus', 'mourn', 'days', 'friends', '“can', 'will', 'bridegroom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 16, 'No one puts a piece of unshrunk cloth on an old garment; for the patch would tear away from the garment, and a worse hole is made.', 'Matthew 9:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['cloth', 'garment;', 'garment', 'piece', 'tear', 'unshrunk', 'would', 'worse', 'hole', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 17, 'Neither do people put new wine into old wine skins, or else the skins would burst, and the wine be spilled, and the skins ruined. No, they put new wine into fresh wine skins, and both are preserved.”', 'Matthew 9:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'burst', 'ruined', 'would', 'spilled', 'else', 'both', 'preserved', 'people', 'skins']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 18, 'While he told these things to them, behold, a ruler came and worshiped him, saying, “My daughter has just died, but come and lay your hand on her, and she will live.”', 'Matthew 9:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['just', 'things', 'saying', 'these', 'daughter', 'will', 'died', 'worshiped', 'hand', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 19, 'Jesus got up and followed him, as did his disciples.', 'Matthew 9:19', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['jesus', 'followed', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 20, 'Behold, a woman who had an issue of blood for twelve years came behind him, and touched the fringe of his garment;', 'Matthew 9:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['years', 'fringe', 'garment;', 'woman', 'behind', 'issue', 'blood', 'touched', 'behold', 'twelve']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 21, 'for she said within herself, “If I just touch his garment, I will be made well.”', 'Matthew 9:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['just', 'garment', 'well', 'will', 'within', 'herself', 'said', 'made', 'touch']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 22, 'But Jesus, turning around and seeing her, said,
“Daughter, cheer up! Your faith has made you well.” And the woman was made well from that hour.', 'Matthew 9:22', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['well', 'woman', 'jesus', 'around', 'faith', 'turning', 'hour', 'seeing', 'said', 'cheer']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 23, 'When Jesus came into the ruler’s house, and saw the flute players, and the crowd in noisy disorder,', 'Matthew 9:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'disorder', 'noisy', 'jesus', 'players', 'flute', 'crowd', 'when', 'ruler’s', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 24, 'he said to them,
“Make room, because the girl isn’t dead, but sleeping.”
They were ridiculing him.', 'Matthew 9:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'they', 'because', 'room', 'ridiculing', 'girl', '“make', 'said', 'dead', 'sleeping']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 25, 'But when the crowd was put out, he entered in, took her by the hand, and the girl arose.', 'Matthew 9:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['entered', 'took', 'arose', 'girl', 'crowd', 'hand', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 26, 'The report of this went out into all that land.', 'Matthew 9:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['land', 'went', 'this', 'that', 'report']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 27, 'As Jesus passed by from there, two blind men followed him, calling out and saying, “Have mercy on us, son of David!”', 'Matthew 9:27', 'WEB', ARRAY['Forgiveness', 'Discipleship', 'Grace']::TEXT[], ARRAY['followed', 'calling', 'passed', 'saying', 'jesus', 'david', 'there', '“have', 'mercy', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 28, 'When he had come into the house, the blind men came to him. Jesus said to them,
“Do you believe that I am able to do this?”
They told him, “Yes, Lord.”', 'Matthew 9:28', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['house', 'they', '“yes', 'jesus', 'lord', 'this', 'said', 'come', 'told', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 29, 'Then he touched their eyes, saying,
“According to your faith be it done to you.”', 'Matthew 9:29', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['their', 'saying', 'done', 'faith', 'touched', 'your', 'then', 'eyes', '“according']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 30, 'Their eyes were opened. Jesus strictly commanded them, saying,
“See that no one knows about this.”', 'Matthew 9:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'saying', 'jesus', 'strictly', 'them', 'knows', 'this', 'opened', 'that', '“see']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 31, 'But they went out and spread abroad his fame in all that land.', 'Matthew 9:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['spread', 'they', 'land', 'went', 'fame', 'abroad', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 32, 'As they went out, behold, a mute man who was demon possessed was brought to him.', 'Matthew 9:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'went', 'demon', 'mute', 'brought', 'behold', 'possessed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 33, 'When the demon was cast out, the mute man spoke. The multitudes marveled, saying, “Nothing like this has ever been seen in Israel!”', 'Matthew 9:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'seen', 'saying', 'multitudes', 'marveled', 'demon', 'ever', 'spoke', 'this', 'israel']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 34, 'But the Pharisees said, “By the prince of the demons, he casts out demons.”', 'Matthew 9:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['demons', 'prince', 'said', 'casts', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 35, 'Jesus went about all the cities and the villages, teaching in their synagogues, and preaching the Good News of the Kingdom, and healing every disease and every sickness among the people.', 'Matthew 9:35', 'WEB', ARRAY['Kingdom', 'Teaching', 'Miracle']::TEXT[], ARRAY['synagogues', 'their', 'teaching', 'villages', 'went', 'jesus', 'news', 'sickness', 'good', 'healing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 36, 'But when he saw the multitudes, he was moved with compassion for them, because they were harassed and scattered, like sheep without a shepherd.', 'Matthew 9:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'without', 'because', 'sheep', 'compassion', 'shepherd', 'multitudes', 'harassed', 'scattered', 'moved']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 37, 'Then he said to his disciples,
“The harvest indeed is plentiful, but the laborers are few.', 'Matthew 9:37', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['plentiful', 'said', 'harvest', 'indeed', 'then', '“the', 'disciples', 'laborers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_9}', 38, 'Pray therefore that the Lord of the harvest will send out laborers into his harvest.”', 'Matthew 9:38', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['therefore', 'send', 'pray', 'will', 'harvest', 'that', 'lord', 'laborers']::TEXT[], NOW());

-- Matthew Chapter 10 (42 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 1, 'He called to himself his twelve disciples, and gave them authority over unclean spirits, to cast them out, and to heal every disease and every sickness.', 'Matthew 10:1', 'WEB', ARRAY['Miracle', 'Discipleship', 'Holy Spirit']::TEXT[], ARRAY['over', 'gave', 'heal', 'unclean', 'disease', 'authority', 'himself', 'spirits', 'every', 'twelve']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 2, 'Now the names of the twelve apostles are these. The first, Simon, who is called Peter; Andrew, his brother; James the son of Zebedee; John, his brother;', 'Matthew 10:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'john', 'twelve', 'these', 'peter;', 'apostles', 'james', 'zebedee;', 'simon', 'names']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 3, 'Philip; Bartholomew; Thomas; Matthew the tax collector; James the son of Alphaeus; Lebbaeus, who was also called Thaddaeus;', 'Matthew 10:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['alphaeus;', 'thaddaeus;', 'james', 'matthew', 'thomas;', 'also', 'bartholomew;', 'collector;', 'lebbaeus', 'philip;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 4, 'Simon the Canaanite; and Judas Iscariot, who also betrayed him.', 'Matthew 10:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['iscariot', 'judas', 'canaanite;', 'also', 'betrayed', 'simon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 5, 'Jesus sent these twelve out, and commanded them, saying,
“Don’t go among the Gentiles, and don’t enter into any city of the Samaritans.', 'Matthew 10:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'saying', 'jesus', 'these', '“don’t', 'gentiles', 'among', 'samaritans', 'enter', 'commanded']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 6, 'Rather, go to the lost sheep of the house of Israel.', 'Matthew 10:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'sheep', 'israel', 'rather', 'lost']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 7, 'As you go, preach, saying, ‘The Kingdom of Heaven is at hand!’', 'Matthew 10:7', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['preach', '‘the', 'saying', 'hand', 'heaven', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 8, 'Heal the sick, cleanse the lepers,
and cast out demons. Freely you received, so freely give.', 'Matthew 10:8', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['heal', 'lepers', 'demons', 'give', 'freely', 'sick', 'cleanse', 'received', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 9, 'Don’t take any gold, silver, or brass in your money belts.', 'Matthew 10:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['belts', 'take', 'money', 'your', 'brass', 'gold', 'don’t', 'silver']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 10, 'Take no bag for your journey, neither two coats, nor shoes, nor staff: for the laborer is worthy of his food.', 'Matthew 10:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['coats', 'staff:', 'take', 'worthy', 'laborer', 'food', 'neither', 'your', 'shoes', 'journey']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 11, 'Into whatever city or village you enter, find out who in it is worthy; and stay there until you go on.', 'Matthew 10:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'whatever', 'find', 'worthy;', 'stay', 'until', 'there', 'enter', 'village']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 12, 'As you enter into the household, greet it.', 'Matthew 10:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['household', 'enter', 'greet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 13, 'If the household is worthy, let your peace come on it, but if it isn’t worthy, let your peace return to you.', 'Matthew 10:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'return', 'worthy', 'peace', 'household', 'come', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 14, 'Whoever doesn’t receive you, nor hear your words, as you go out of that house or that city, shake the dust off your feet.', 'Matthew 10:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'city', 'shake', 'dust', 'feet', 'hear', 'whoever', 'receive', 'your', 'words']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 15, 'Most certainly I tell you, it will be more tolerable for the land of Sodom and Gomorrah in the day of judgment than for that city.', 'Matthew 10:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'city', 'than', 'land', 'sodom', 'tell', 'will', 'tolerable', 'judgment', 'gomorrah']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 16, '“Behold, I send you out as sheep among wolves. Therefore be wise as serpents, and harmless as doves.', 'Matthew 10:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['harmless', 'serpents', 'therefore', 'send', 'sheep', 'among', 'wolves', 'wise', 'doves', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 17, 'But beware of men: for they will deliver you up to councils, and in their synagogues they will scourge you.', 'Matthew 10:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['deliver', 'they', 'their', 'men:', 'synagogues', 'scourge', 'councils', 'will', 'beware']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 18, 'Yes, and you will be brought before governors and kings for my sake, for a testimony to them and to the nations.', 'Matthew 10:18', 'WEB', ARRAY['Kingdom', 'Witness']::TEXT[], ARRAY['governors', 'testimony', 'nations', 'kings', 'will', 'brought', 'before', 'them', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 19, 'But when they deliver you up, don’t be anxious how or what you will say, for it will be given you in that hour what you will say.', 'Matthew 10:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['deliver', 'they', 'what', 'given', 'anxious', 'will', 'hour', 'when', 'that', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 20, 'For it is not you who speak, but the Spirit of your Father who speaks in you.', 'Matthew 10:20', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'speaks', 'father', 'your', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 21, '“Brother will deliver up brother to death, and the father his child. Children will rise up against parents, and cause them to be put to death.', 'Matthew 10:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['rise', 'deliver', 'children', 'cause', 'will', 'death', 'brother', 'child', '“brother', 'against']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 22, 'You will be hated by all men for my name’s sake, but he who endures to the end will be saved.', 'Matthew 10:22', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['name’s', 'will', 'saved', 'hated', 'endures', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 23, 'But when they persecute you in this city, flee into the next, for most certainly I tell you, you will not have gone through the cities of Israel, until the Son of Man has come.', 'Matthew 10:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'city', 'they', 'gone', 'flee', 'tell', 'next', 'will', 'until', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 24, '“A disciple is not above his teacher, nor a servant above his lord.', 'Matthew 10:24', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['teacher', 'disciple', 'above', 'servant', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 25, 'It is enough for the disciple that he be like his teacher, and the servant like his lord. If they have called the master of the house Beelzebul,
how much more those of his household!', 'Matthew 10:25', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['house', 'they', 'teacher', 'more', 'enough', 'disciple', 'master', 'those', 'have', 'household']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 26, 'Therefore don’t be afraid of them, for there is nothing covered that will not be revealed; and hidden that will not be known.', 'Matthew 10:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['hidden', 'therefore', 'will', 'known', 'afraid', 'there', 'covered', 'nothing', 'that', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 27, 'What I tell you in the darkness, speak in the light; and what you hear whispered in the ear, proclaim on the housetops.', 'Matthew 10:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['darkness', 'what', 'tell', 'hear', 'housetops', 'light;', 'speak', 'proclaim', 'whispered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 28, 'Don’t be afraid of those who kill the body, but are not able to kill the soul. Rather, fear him who is able to destroy both soul and body in Gehenna.', 'Matthew 10:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['soul', 'destroy', 'both', 'those', 'afraid', 'body', 'able', 'fear', 'gehenna', 'rather']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 29, '“Aren’t two sparrows sold for an assarion coin?
Not one of them falls on the ground apart from your Father’s will,', 'Matthew 10:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['sold', 'coin', 'falls', 'father’s', 'ground', 'will', 'sparrows', 'apart', 'assarion', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 30, 'but the very hairs of your head are all numbered.', 'Matthew 10:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['numbered', 'very', 'hairs', 'your', 'head']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 31, 'Therefore don’t be afraid. You are of more value than many sparrows.', 'Matthew 10:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['than', 'therefore', 'sparrows', 'many', 'afraid', 'value', 'don’t', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 32, 'Everyone therefore who confesses me before men, him I will also confess before my Father who is in heaven.', 'Matthew 10:32', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['therefore', 'confess', 'will', 'everyone', 'also', 'father', 'confesses', 'before', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 33, 'But whoever denies me before men, him I will also deny before my Father who is in heaven.', 'Matthew 10:33', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['denies', 'deny', 'will', 'whoever', 'also', 'father', 'before', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 34, '“Don’t think that I came to send peace on the earth. I didn’t come to send peace, but a sword.', 'Matthew 10:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['sword', 'think', 'send', '“don’t', 'peace', 'earth', 'didn’t', 'come', 'that', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 35, 'For I came to set a man at odds against his father, and a daughter against her mother, and a daughter-in-law against her mother-in-law.', 'Matthew 10:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['daughter-in-law', 'mother-in-law', 'odds', 'mother', 'daughter', 'against', 'father', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 36, 'A man’s foes will be those of his own household.', 'Matthew 10:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'those', 'household', 'man’s', 'foes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 37, 'He who loves father or mother more than me is not worthy of me; and he who loves son or daughter more than me isn’t worthy of me.', 'Matthew 10:37', 'WEB', ARRAY['Love']::TEXT[], ARRAY['isn’t', 'than', 'mother', 'worthy', 'daughter', 'loves', 'father', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 38, 'He who doesn’t take his cross and follow after me, isn’t worthy of me.', 'Matthew 10:38', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['isn’t', 'after', 'take', 'doesn’t', 'worthy', 'follow', 'cross']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 39, 'He who seeks his life will lose it; and he who loses his life for my sake will find it.', 'Matthew 10:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['find', 'life', 'lose', 'will', 'seeks', 'loses', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 40, 'He who receives you receives me, and he who receives me receives him who sent me.', 'Matthew 10:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['sent', 'receives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 41, 'He who receives a prophet in the name of a prophet will receive a prophet’s reward. He who receives a righteous man in the name of a righteous man will receive a righteous man’s reward.', 'Matthew 10:41', 'WEB', ARRAY['Prophecy', 'Righteousness']::TEXT[], ARRAY['reward', 'name', 'will', 'receive', 'righteous', 'prophet’s', 'prophet', 'man’s', 'receives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_10}', 42, 'Whoever gives one of these little ones just a cup of cold water to drink in the name of a disciple, most certainly I tell you he will in no way lose his reward.”', 'Matthew 10:42', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['just', 'most', 'reward', 'name', 'tell', 'lose', 'these', 'drink', 'disciple', 'gives']::TEXT[], NOW());

-- Matthew Chapter 11 (30 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 1, 'When Jesus had finished directing his twelve disciples, he departed from there to teach and preach in their cities.', 'Matthew 11:1', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['directing', 'teach', 'their', 'preach', 'jesus', 'there', 'finished', 'when', 'twelve', 'cities']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 2, 'Now when John heard in the prison the works of Christ, he sent two of his disciples', 'Matthew 11:2', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['prison', 'john', 'works', 'heard', 'when', 'sent', 'disciples', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 3, 'and said to him, “Are you he who comes, or should we look for another?”', 'Matthew 11:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['should', 'another', 'comes', '“are', 'look', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 4, 'Jesus answered them,
“Go and tell John the things which you hear and see:', 'Matthew 11:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'john', 'tell', 'which', 'jesus', 'hear', 'see:', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 5, 'the blind receive their sight, the lame walk, the lepers are cleansed, the deaf hear,
the dead are raised up, and the poor have good news preached to them.', 'Matthew 11:5', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['their', 'lepers', 'sight', 'deaf', 'poor', 'hear', 'lame', 'good', 'news', 'walk']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 6, 'Blessed is he who finds no occasion for stumbling in me.”', 'Matthew 11:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['blessed', 'occasion', 'stumbling', 'finds']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 7, 'As these went their way, Jesus began to say to the multitudes concerning John,
“What did you go out into the wilderness to see? A reed shaken by the wind?', 'Matthew 11:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', '“what', 'wilderness', 'john', 'went', 'shaken', 'jesus', 'these', 'multitudes', 'wind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 8, 'But what did you go out to see? A man in soft clothing? Behold, those who wear soft clothing are in kings’ houses.', 'Matthew 11:8', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['wear', 'houses', 'what', 'kings’', 'those', 'behold', 'clothing', 'soft']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 9, 'But why did you go out? To see a prophet? Yes, I tell you, and much more than a prophet.', 'Matthew 11:9', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['than', 'tell', 'prophet', 'more', 'much']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 10, 'For this is he, of whom it is written, ‘Behold, I send my messenger before your face, who will prepare your way before you.’', 'Matthew 11:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'messenger', 'send', 'face', 'prepare', 'will', '‘behold', 'this', 'your', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 11, 'Most certainly I tell you, among those who are born of women there has not arisen anyone greater than John the Baptizer; yet he who is least in the Kingdom of Heaven is greater than he.', 'Matthew 11:11', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['most', 'anyone', 'than', 'baptizer;', 'john', 'tell', 'least', 'arisen', 'those', 'among']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 12, 'From the days of John the Baptizer until now, the Kingdom of Heaven suffers violence, and the violent take it by force.', 'Matthew 11:12', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['john', 'violence', 'violent', 'take', 'days', 'until', 'suffers', 'baptizer', 'heaven', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 13, 'For all the prophets and the law prophesied until John.', 'Matthew 11:13', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['prophesied', 'until', 'john', 'prophets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 14, 'If you are willing to receive it, this is Elijah, who is to come.', 'Matthew 11:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['this', 'elijah', 'receive', 'come', 'willing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 15, 'He who has ears to hear, let him hear.', 'Matthew 11:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['ears', 'hear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 16, '“But to what shall I compare this generation? It is like children sitting in the marketplaces, who call to their companions', 'Matthew 11:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'their', 'what', 'companions', '“but', 'shall', 'sitting', 'call', 'this', 'generation']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 17, 'and say, ‘We played the flute for you, and you didn’t dance. We mourned for you, and you didn’t lament.’', 'Matthew 11:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['mourned', 'flute', 'didn’t', 'lament', 'dance', 'played']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 18, 'For John came neither eating nor drinking, and they say, ‘He has a demon.’', 'Matthew 11:18', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'john', 'drinking', 'demon', 'neither', 'eating', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 19, 'The Son of Man came eating and drinking, and they say, ‘Behold, a gluttonous man and a drunkard, a friend of tax collectors and sinners!’ But wisdom is justified by her children.”', 'Matthew 11:19', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['children', 'they', 'wisdom', 'sinners', 'justified', 'drunkard', 'drinking', 'friend', '‘behold', 'eating']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 20, 'Then he began to denounce the cities in which most of his mighty works had been done, because they didn’t repent.', 'Matthew 11:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'been', 'they', 'because', 'which', 'done', 'didn’t', 'denounce', 'repent', 'began']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 21, '“Woe to you, Chorazin! Woe to you, Bethsaida! For if the mighty works had been done in Tyre and Sidon which were done in you, they would have repented long ago in sackcloth and ashes.', 'Matthew 11:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['ashes', 'repented', 'been', 'tyre', 'they', 'sackcloth', 'done', 'sidon', 'which', 'would']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 22, 'But I tell you, it will be more tolerable for Tyre and Sidon on the day of judgment than for you.', 'Matthew 11:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['tyre', 'than', 'tell', 'sidon', 'will', 'tolerable', 'judgment', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 23, 'You, Capernaum, who are exalted to heaven, you will go down to Hades.

For if the mighty works had been done in Sodom which were done in you, it would have remained until today.', 'Matthew 11:23', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['been', 'sodom', 'done', 'which', 'will', 'would', 'hades', 'until', 'remained', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 24, 'But I tell you that it will be more tolerable for the land of Sodom, on the day of judgment, than for you.”', 'Matthew 11:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['than', 'land', 'sodom', 'tell', 'will', 'tolerable', 'judgment', 'that', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 25, 'At that time, Jesus answered,
“I thank you, Father, Lord of heaven and earth, that you hid these things from the wise and understanding, and revealed them to infants.', 'Matthew 11:25', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['understanding', 'things', 'time', 'revealed', 'infants', 'jesus', 'these', 'them', 'earth', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 26, 'Yes, Father, for so it was well-pleasing in your sight.', 'Matthew 11:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['sight', 'well-pleasing', 'father', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 27, 'All things have been delivered to me by my Father. No one knows the Son, except the Father; neither does anyone know the Father, except the Son, and he to whom the Son desires to reveal him.', 'Matthew 11:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'anyone', 'been', 'father;', 'does', 'except', 'desires', 'delivered', 'knows', 'know']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 28, '“Come to me, all you who labor and are heavily burdened, and I will give you rest.', 'Matthew 11:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['burdened', '“come', 'rest', 'labor', 'will', 'give', 'heavily']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 29, 'Take my yoke upon you, and learn from me, for I am gentle and humble in heart; and you will find rest for your souls.', 'Matthew 11:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['rest', 'heart;', 'find', 'upon', 'take', 'will', 'souls', 'gentle', 'learn', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_11}', 30, 'For my yoke is easy, and my burden is light.”', 'Matthew 11:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['yoke', 'light', 'burden', 'easy']::TEXT[], NOW());

-- Matthew Chapter 12 (50 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 1, 'At that time, Jesus went on the Sabbath day through the grain fields. His disciples were hungry and began to pluck heads of grain and to eat.', 'Matthew 12:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['hungry', 'time', 'fields', 'went', 'jesus', 'pluck', 'began', 'heads', 'that', 'grain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 2, 'But the Pharisees, when they saw it, said to him, “Behold, your disciples do what is not lawful to do on the Sabbath.”', 'Matthew 12:2', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'lawful', 'what', 'sabbath', 'said', 'your', 'when', 'pharisees', 'disciples', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 3, 'But he said to them,
“Haven’t you read what David did, when he was hungry, and those who were with him;', 'Matthew 12:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['hungry', 'what', 'david', 'him;', 'those', 'said', '“haven’t', 'when', 'them', 'read']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 4, 'how he entered into God’s house, and ate the show bread, which was not lawful for him to eat, neither for those who were with him, but only for the priests?', 'Matthew 12:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'lawful', 'entered', 'which', 'god’s', 'show', 'only', 'priests', 'those', 'neither']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 5, 'Or have you not read in the law, that on the Sabbath day, the priests in the temple profane the Sabbath, and are guiltless?', 'Matthew 12:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['profane', 'guiltless', 'priests', 'temple', 'have', 'that', 'read', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 6, 'But I tell you that one greater than the temple is here.', 'Matthew 12:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['than', 'tell', 'temple', 'that', 'greater', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 7, 'But if you had known what this means, ‘I desire mercy, and not sacrifice,’
you wouldn’t have condemned the guiltless.', 'Matthew 12:7', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['sacrifice', 'means', 'what', 'guiltless', 'known', 'this', 'have', 'wouldn’t', 'desire', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 8, 'For the Son of Man is Lord of the Sabbath.”', 'Matthew 12:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['lord', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 9, 'He departed there, and went into their synagogue.', 'Matthew 12:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'went', 'there', 'synagogue', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 10, 'And behold there was a man with a withered hand. They asked him, “Is it lawful to heal on the Sabbath day?” that they might accuse him.', 'Matthew 12:10', 'WEB', ARRAY['Prayer', 'Miracle']::TEXT[], ARRAY['might', 'asked', 'they', 'lawful', 'heal', 'accuse', 'withered', 'there', 'hand', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 11, 'He said to them,
“What man is there among you, who has one sheep, and if this one falls into a pit on the Sabbath day, won’t he grab on to it, and lift it out?', 'Matthew 12:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['“what', 'falls', 'sheep', 'grab', 'there', 'said', 'among', 'this', 'lift', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 12, 'Of how much more value then is a man than a sheep! Therefore it is lawful to do good on the Sabbath day.”', 'Matthew 12:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['than', 'therefore', 'lawful', 'sheep', 'good', 'value', 'then', 'more', 'much', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 13, 'Then he told the man,
“Stretch out your hand.” He stretched it out; and it was restored whole, just like the other.', 'Matthew 12:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['just', 'restored', 'out;', '“stretch', 'other', 'hand', 'stretched', 'told', 'your', 'whole']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 14, 'But the Pharisees went out, and conspired against him, how they might destroy him.', 'Matthew 12:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'they', 'conspired', 'went', 'against', 'destroy', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 15, 'Jesus, perceiving that, withdrew from there. Great multitudes followed him; and he healed them all,', 'Matthew 12:15', 'WEB', ARRAY['Miracle', 'Discipleship']::TEXT[], ARRAY['withdrew', 'followed', 'jesus', 'multitudes', 'him;', 'there', 'healed', 'perceiving', 'great', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 16, 'and commanded them that they should not make him known:', 'Matthew 12:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'should', 'known:', 'make', 'that', 'commanded', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 17, 'that it might be fulfilled which was spoken through Isaiah the prophet, saying,', 'Matthew 12:17', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'isaiah', 'saying', 'which', 'fulfilled', 'spoken', 'that', 'prophet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 18, '“Behold, my servant whom I have chosen;
my beloved in whom my soul is well pleased:
I will put my Spirit on him.
He will proclaim justice to the nations.', 'Matthew 12:18', 'WEB', ARRAY['Love', 'Holy Spirit']::TEXT[], ARRAY['spirit', 'well', 'beloved', 'nations', 'will', 'chosen;', 'soul', 'justice', 'have', 'servant']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 19, 'He will not strive, nor shout;
neither will anyone hear his voice in the streets.', 'Matthew 12:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['streets', 'anyone', 'voice', 'will', 'hear', 'shout;', 'strive', 'neither']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 20, 'He won’t break a bruised reed.
He won’t quench a smoking flax,
until he leads justice to victory.', 'Matthew 12:20', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['leads', 'quench', 'flax', 'bruised', 'until', 'break', 'justice', 'victory', 'smoking', 'reed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 21, 'In his name, the nations will hope.”', 'Matthew 12:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['hope', 'will', 'name', 'nations']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 22, 'Then one possessed by a demon, blind and mute, was brought to him and he healed him, so that the blind and mute man both spoke and saw.', 'Matthew 12:22', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['demon', 'both', 'spoke', 'healed', 'brought', 'mute', 'that', 'then', 'possessed', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 23, 'All the multitudes were amazed, and said, “Can this be the son of David?”', 'Matthew 12:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['david', 'multitudes', '“can', 'this', 'said', 'amazed', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 24, 'But when the Pharisees heard it, they said, “This man does not cast out demons, except by Beelzebul, the prince of the demons.”', 'Matthew 12:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'demons', 'does', 'except', 'prince', 'said', 'heard', 'when', '“this', 'beelzebul']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 25, 'Knowing their thoughts, Jesus said to them,
“Every kingdom divided against itself is brought to desolation, and every city or house divided against itself will not stand.', 'Matthew 12:25', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['house', 'city', 'their', 'jesus', 'will', 'stand', '“every', 'desolation', 'knowing', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 26, 'If Satan casts out Satan, he is divided against himself. How then will his kingdom stand?', 'Matthew 12:26', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['will', 'stand', 'himself', 'against', 'divided', 'satan', 'then', 'casts', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 27, 'If I by Beelzebul cast out demons, by whom do your children cast them out? Therefore they will be your judges.', 'Matthew 12:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'they', 'demons', 'therefore', 'will', 'judges', 'your', 'them', 'beelzebul', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 28, 'But if I by the Spirit of God cast out demons, then God’s Kingdom has come upon you.', 'Matthew 12:28', 'WEB', ARRAY['Kingdom', 'Holy Spirit']::TEXT[], ARRAY['spirit', 'demons', 'upon', 'god’s', 'come', 'then', 'kingdom', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 29, 'Or how can one enter into the house of the strong man, and plunder his goods, unless he first bind the strong man? Then he will plunder his house.', 'Matthew 12:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'unless', 'first', 'goods', 'bind', 'will', 'enter', 'strong', 'plunder', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 30, '“He who is not with me is against me, and he who doesn’t gather with me, scatters.', 'Matthew 12:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['against', 'scatters', 'doesn’t', 'gather']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 31, 'Therefore I tell you, every sin and blasphemy will be forgiven men, but the blasphemy against the Spirit will not be forgiven men.', 'Matthew 12:31', 'WEB', ARRAY['Forgiveness', 'Holy Spirit']::TEXT[], ARRAY['spirit', 'therefore', 'tell', 'will', 'blasphemy', 'against', 'every', 'forgiven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 32, 'Whoever speaks a word against the Son of Man, it will be forgiven him; but whoever speaks against the Holy Spirit, it will not be forgiven him, neither in this age, nor in that which is to come.', 'Matthew 12:32', 'WEB', ARRAY['Forgiveness', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'which', 'will', 'speaks', 'word', 'him;', 'whoever', 'against', 'this', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 33, '“Either make the tree good, and its fruit good, or make the tree corrupt, and its fruit corrupt; for the tree is known by its fruit.', 'Matthew 12:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'corrupt', 'fruit', 'make', 'good', 'corrupt;', 'known', '“either']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 34, 'You offspring of vipers, how can you, being evil, speak good things? For out of the abundance of the heart, the mouth speaks.', 'Matthew 12:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'speak', 'speaks', 'vipers', 'good', 'abundance', 'being', 'offspring', 'evil', 'heart']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 35, 'The good man out of his good treasure brings out good things, and the evil man out of his evil treasure
brings out evil things.', 'Matthew 12:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['brings', 'things', 'good', 'evil', 'treasure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 36, 'I tell you that every idle word that men speak, they will give account of it in the day of judgment.', 'Matthew 12:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'tell', 'idle', 'will', 'give', 'word', 'account', 'every', 'judgment', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 37, 'For by your words you will be justified, and by your words you will be condemned.”', 'Matthew 12:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['justified', 'will', 'words', 'your', 'condemned']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 38, 'Then certain of the scribes and Pharisees answered, “Teacher, we want to see a sign from you.”', 'Matthew 12:38', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['sign', 'want', 'scribes', '“teacher', 'certain', 'then', 'pharisees', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 39, 'But he answered them,
“An evil and adulterous generation seeks after a sign, but no sign will be given to it but the sign of Jonah the prophet.', 'Matthew 12:39', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['sign', 'jonah', 'prophet', 'after', 'adulterous', 'given', 'will', 'seeks', 'generation', 'evil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 40, 'For as Jonah was three days and three nights in the belly of the whale, so will the Son of Man be three days and three nights in the heart of the earth.', 'Matthew 12:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['jonah', 'will', 'days', 'earth', 'whale', 'three', 'heart', 'nights', 'belly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 41, 'The men of Nineveh will stand up in the judgment with this generation, and will condemn it, for they repented at the preaching of Jonah; and behold, someone greater than Jonah is here.', 'Matthew 12:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['jonah', 'repented', 'they', 'than', 'condemn', 'jonah;', 'will', 'stand', 'behold', 'greater']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 42, 'The queen of the south will rise up in the judgment with this generation, and will condemn it, for she came from the ends of the earth to hear the wisdom of Solomon; and behold, someone greater than Solomon is here.', 'Matthew 12:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['generation', 'rise', 'wisdom', 'than', 'will', 'hear', 'this', 'earth', 'behold', 'judgment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 43, 'When an unclean spirit has gone out of a man, he passes through waterless places, seeking rest, and doesn’t find it.', 'Matthew 12:43', 'WEB', ARRAY['Kingdom', 'Holy Spirit']::TEXT[], ARRAY['spirit', 'gone', 'waterless', 'unclean', 'seeking', 'places', 'rest', 'find', 'when', 'passes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 44, 'Then he says, ‘I will return into my house from which I came out,’ and when he has come back, he finds it empty, swept, and put in order.', 'Matthew 12:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'return', 'empty', 'which', 'will', 'swept', 'finds', 'back', 'come', 'says']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 45, 'Then he goes, and takes with himself seven other spirits more evil than he is, and they enter in and dwell there. The last state of that man becomes worse than the first. Even so will it be also to this evil generation.”', 'Matthew 12:45', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['dwell', 'they', 'also', 'last', 'evil', 'then', 'generation', 'than', 'will', 'himself']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 46, 'While he was yet speaking to the multitudes, behold, his mother and his brothers stood outside, seeking to speak to him.', 'Matthew 12:46', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['seeking', 'mother', 'multitudes', 'stood', 'while', 'speaking', 'behold', 'brothers', 'speak', 'outside']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 47, 'One said to him, “Behold, your mother and your brothers stand outside, seeking to speak to you.”', 'Matthew 12:47', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['seeking', 'mother', 'stand', 'outside', 'said', 'your', 'brothers', 'speak', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 48, 'But he answered him who spoke to him,
“Who is my mother? Who are my brothers?”', 'Matthew 12:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['mother', 'spoke', 'brothers', '“who', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 49, 'He stretched out his hand towards his disciples, and said,
“Behold, my mother and my brothers!', 'Matthew 12:49', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['mother', 'towards', 'said', 'stretched', 'hand', 'brothers', 'disciples', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_12}', 50, 'For whoever does the will of my Father who is in heaven, he is my brother, and sister, and mother.”', 'Matthew 12:50', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['sister', 'does', 'mother', 'will', 'brother', 'whoever', 'father', 'heaven']::TEXT[], NOW());

-- Matthew Chapter 13 (58 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 1, 'On that day Jesus went out of the house, and sat by the seaside.', 'Matthew 13:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'went', 'jesus', 'seaside', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 2, 'Great multitudes gathered to him, so that he entered into a boat, and sat, and all the multitude stood on the beach.', 'Matthew 13:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['boat', 'beach', 'entered', 'multitude', 'multitudes', 'stood', 'gathered', 'great', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 3, 'He spoke to them many things in parables, saying,
“Behold, a farmer went out to sow.', 'Matthew 13:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'saying', 'went', 'farmer', 'spoke', 'many', 'parables', 'them', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 4, 'As he sowed, some seeds fell by the roadside, and the birds came and devoured them.', 'Matthew 13:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['sowed', 'seeds', 'devoured', 'birds', 'fell', 'some', 'them', 'came', 'roadside']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 5, 'Others fell on rocky ground, where they didn’t have much soil, and immediately they sprang up, because they had no depth of earth.', 'Matthew 13:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'rocky', 'depth', 'ground', 'because', 'sprang', 'others', 'didn’t', 'earth', 'fell']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 6, 'When the sun had risen, they were scorched. Because they had no root, they withered away.', 'Matthew 13:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['root', 'risen', 'they', 'because', 'withered', 'away', 'when', 'were', 'scorched']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 7, 'Others fell among thorns. The thorns grew up and choked them.', 'Matthew 13:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['grew', 'thorns', 'others', 'among', 'fell', 'choked', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 8, 'Others fell on good soil, and yielded fruit: some one hundred times as much, some sixty, and some thirty.', 'Matthew 13:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['sixty', 'times', 'hundred', 'good', 'others', 'fell', 'some', 'thirty', 'soil', 'fruit:']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 9, 'He who has ears to hear, let him hear.”', 'Matthew 13:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['ears', 'hear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 10, 'The disciples came, and said to him, “Why do you speak to them in parables?”', 'Matthew 13:10', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['said', '“why', 'parables', 'speak', 'them', 'disciples', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 11, 'He answered them,
“To you it is given to know the mysteries of the Kingdom of Heaven, but it is not given to them.', 'Matthew 13:11', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['given', 'know', 'mysteries', 'heaven', 'them', 'kingdom', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 12, 'For whoever has, to him will be given, and he will have abundance, but whoever doesn’t have, from him will be taken away even that which he has.', 'Matthew 13:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['taken', 'which', 'given', 'will', 'even', 'whoever', 'have', 'abundance', 'away', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 13, 'Therefore I speak to them in parables, because seeing they don’t see, and hearing, they don’t hear, neither do they understand.', 'Matthew 13:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', 'because', 'hearing', 'hear', 'understand', 'seeing', 'neither', 'parables', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 14, 'In them the prophecy of Isaiah is fulfilled, which says,

‘By hearing you will hear,
and will in no way understand;
Seeing you will see,
and will in no way perceive:', 'Matthew 13:14', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['isaiah', 'perceive:', 'prophecy', 'which', 'hearing', 'will', 'fulfilled', 'hear', 'seeing', 'says']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 15, 'for this people’s heart has grown callous,
their ears are dull of hearing,
they have closed their eyes;
or else perhaps they might perceive with their eyes,
hear with their ears,
understand with their heart,
and would turn again;
and I would heal them.’', 'Matthew 13:15', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['might', 'they', 'heal', 'hearing', 'dull', 'perceive', 'closed', 'eyes', 'heart', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 16, '“But blessed are your eyes, for they see; and your ears, for they hear.', 'Matthew 13:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['see;', 'they', '“but', 'hear', 'blessed', 'ears', 'your', 'eyes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 17, 'For most certainly I tell you that many prophets and righteous men desired to see the things which you see, and didn’t see them; and to hear the things which you hear, and didn’t hear them.', 'Matthew 13:17', 'WEB', ARRAY['Prophecy', 'Righteousness']::TEXT[], ARRAY['most', 'things', 'them;', 'tell', 'which', 'hear', 'many', 'desired', 'didn’t', 'righteous']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 18, '“Hear, then, the parable of the farmer.', 'Matthew 13:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['then', 'farmer', '“hear', 'parable']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 19, 'When anyone hears the word of the Kingdom, and doesn’t understand it, the evil one comes, and snatches away that which has been sown in his heart. This is what was sown by the roadside.', 'Matthew 13:19', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['been', 'snatches', 'away', 'evil', 'heart', 'doesn’t', 'roadside', 'which', 'understand', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 20, 'What was sown on the rocky places, this is he who hears the word, and immediately with joy receives it;', 'Matthew 13:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['rocky', 'what', 'places', 'sown', 'word', 'this', 'immediately', 'hears', 'receives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 21, 'yet he has no root in himself, but endures for a while. When oppression or persecution arises because of the word, immediately he stumbles.', 'Matthew 13:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['root', 'arises', 'because', 'himself', 'persecution', 'word', 'stumbles', 'immediately', 'while', 'oppression']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 22, 'What was sown among the thorns, this is he who hears the word, but the cares of this age and the deceitfulness of riches choke the word, and he becomes unfruitful.', 'Matthew 13:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['choke', 'what', 'thorns', 'becomes', 'sown', 'word', 'unfruitful', 'among', 'this', 'deceitfulness']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 23, 'What was sown on the good ground, this is he who hears the word, and understands it, who most certainly bears fruit, and produces, some one hundred times as much, some sixty, and some thirty.”', 'Matthew 13:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'ground', 'hundred', 'certainly', 'this', 'hears', 'much', 'sixty', 'understands', 'fruit']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 24, 'He set another parable before them, saying,
“The Kingdom of Heaven is like a man who sowed good seed in his field,', 'Matthew 13:24', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['sowed', 'heaven', '“the', 'parable', 'saying', 'another', 'seed', 'good', 'field', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 25, 'but while people slept, his enemy came and sowed darnel weeds
also among the wheat, and went away.', 'Matthew 13:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['sowed', 'weeds', 'went', 'slept', 'among', 'away', 'wheat', 'while', 'also', 'darnel']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 26, 'But when the blade sprang up and produced fruit, then the darnel weeds appeared also.', 'Matthew 13:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['weeds', 'fruit', 'sprang', 'blade', 'also', 'when', 'darnel', 'then', 'appeared', 'produced']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 27, 'The servants of the householder came and said to him, ‘Sir, didn’t you sow good seed in your field? Where did these darnel weeds come from?’', 'Matthew 13:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'weeds', 'seed', 'these', 'householder', 'good', 'field', 'didn’t', 'said', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 28, '“He said to them, ‘An enemy has done this.’
“The servants asked him, ‘Do you want us to go and gather them up?’', 'Matthew 13:28', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['servants', 'asked', '“the', 'want', 'gather', 'done', 'this', 'said', 'enemy', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 29, '“But he said, ‘No, lest perhaps while you gather up the darnel weeds, you root up the wheat with them.', 'Matthew 13:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['root', 'darnel', 'weeds', 'gather', 'lest', '“but', 'said', 'wheat', 'while', 'perhaps']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 30, 'Let both grow together until the harvest, and in the harvest time I will tell the reapers, “First, gather up the darnel weeds, and bind them in bundles to burn them; but gather the wheat into my barn.”’”', 'Matthew 13:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'bind', 'bundles', 'barn', 'until', 'grow', 'them;', 'burn', 'them', 'weeds']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 31, 'He set another parable before them, saying,
“The Kingdom of Heaven is like a grain of mustard seed, which a man took, and sowed in his field;', 'Matthew 13:31', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['sowed', 'heaven', 'grain', '“the', 'parable', 'saying', 'another', 'seed', 'which', 'took']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 32, 'which indeed is smaller than all seeds. But when it is grown, it is greater than the herbs, and becomes a tree, so that the birds of the air come and lodge in its branches.”', 'Matthew 13:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'than', 'smaller', 'seeds', 'which', 'becomes', 'branches', 'herbs', 'birds', 'indeed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 33, 'He spoke another parable to them.
“The Kingdom of Heaven is like yeast, which a woman took, and hid in three measures
of meal, until it was all leavened.”', 'Matthew 13:33', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['woman', 'parable', 'another', 'which', 'took', 'them', 'meal', 'until', 'spoke', 'yeast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 34, 'Jesus spoke all these things in parables to the multitudes; and without a parable, he didn’t speak to them,', 'Matthew 13:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'without', 'parable', 'jesus', 'these', 'spoke', 'multitudes;', 'didn’t', 'parables', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 35, 'that it might be fulfilled which was spoken through the prophet, saying,
“I will open my mouth in parables;
I will utter things hidden from the foundation of the world.”', 'Matthew 13:35', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'things', 'hidden', 'saying', 'which', 'will', 'fulfilled', 'spoken', 'parables;', 'foundation']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 36, 'Then Jesus sent the multitudes away, and went into the house. His disciples came to him, saying, “Explain to us the parable of the darnel weeds of the field.”', 'Matthew 13:36', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['house', 'weeds', 'went', 'saying', 'jesus', 'parable', 'multitudes', 'field', 'away', '“explain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 37, 'He answered them,
“He who sows the good seed is the Son of Man,', 'Matthew 13:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['seed', 'good', 'them', 'sows', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 38, 'the field is the world; and the good seed, these are the children of the Kingdom; and the darnel weeds are the children of the evil one.', 'Matthew 13:38', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['children', 'weeds', 'seed', 'these', 'field', 'good', 'world;', 'darnel', 'evil', 'kingdom;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 39, 'The enemy who sowed them is the devil. The harvest is the end of the age, and the reapers are angels.', 'Matthew 13:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['sowed', 'harvest', 'reapers', 'enemy', 'them', 'devil', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 40, 'As therefore the darnel weeds are gathered up and burned with fire; so will it be at the end of this age.', 'Matthew 13:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['weeds', 'therefore', 'will', 'this', 'fire;', 'gathered', 'burned', 'darnel']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 41, 'The Son of Man will send out his angels, and they will gather out of his Kingdom all things that cause stumbling, and those who do iniquity,', 'Matthew 13:41', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['things', 'stumbling', 'they', 'send', 'gather', 'cause', 'will', 'iniquity', 'those', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 42, 'and will cast them into the furnace of fire. There will be weeping and the gnashing of teeth.', 'Matthew 13:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['fire', 'will', 'there', 'gnashing', 'teeth', 'them', 'weeping', 'cast', 'furnace']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 43, 'Then the righteous will shine like the sun in the Kingdom of their Father. He who has ears to hear, let him hear.', 'Matthew 13:43', 'WEB', ARRAY['Kingdom', 'Righteousness']::TEXT[], ARRAY['their', 'will', 'hear', 'kingdom', 'ears', 'righteous', 'father', 'then', 'like', 'shine']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 44, '“Again, the Kingdom of Heaven is like treasure hidden in the field, which a man found, and hid. In his joy, he goes and sells all that he has, and buys that field.', 'Matthew 13:44', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['found', 'hidden', 'which', '“again', 'field', 'sells', 'kingdom', 'that', 'buys', 'goes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 45, '“Again, the Kingdom of Heaven is like a man who is a merchant seeking fine pearls,', 'Matthew 13:45', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['pearls', 'seeking', 'fine', '“again', 'kingdom', 'merchant', 'like', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 46, 'who having found one pearl of great price, he went and sold all that he had, and bought it.', 'Matthew 13:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['sold', 'found', 'bought', 'great', 'went', 'price', 'that', 'having', 'pearl']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 47, '“Again, the Kingdom of Heaven is like a dragnet, that was cast into the sea, and gathered some fish of every kind,', 'Matthew 13:47', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['“again', 'kingdom', 'kind', 'some', 'gathered', 'every', 'that', 'like', 'fish', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 48, 'which, when it was filled, they drew up on the beach. They sat down, and gathered the good into containers, but the bad they threw away.', 'Matthew 13:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['threw', 'drew', 'they', 'beach', 'which', 'filled', 'good', 'away', 'gathered', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 49, 'So will it be in the end of the world. The angels will come and separate the wicked from among the righteous,', 'Matthew 13:49', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['wicked', 'will', 'among', 'come', 'righteous', 'world', 'separate', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 50, 'and will cast them into the furnace of fire. There will be the weeping and the gnashing of teeth.”', 'Matthew 13:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['fire', 'will', 'there', 'gnashing', 'teeth', 'them', 'weeping', 'cast', 'furnace']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 51, 'Jesus said to them,
“Have you understood all these things?”

They answered him, “Yes, Lord.”', 'Matthew 13:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'answered', '“yes', 'understood', 'jesus', 'these', 'said', 'them', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 52, 'He said to them,
“Therefore every scribe who has been made a disciple in the Kingdom of Heaven is like a man who is a householder, who brings out of his treasure new and old things.”', 'Matthew 13:52', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['brings', 'things', 'been', '“therefore', 'householder', 'disciple', 'scribe', 'kingdom', 'said', 'every']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 53, 'When Jesus had finished these parables, he departed from there.', 'Matthew 13:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'these', 'there', 'finished', 'when', 'parables', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 54, 'Coming into his own country, he taught them in their synagogue, so that they were astonished, and said, “Where did this man get this wisdom, and these mighty works?', 'Matthew 13:54', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['astonished', 'their', 'they', 'wisdom', 'coming', '“where', 'taught', 'these', 'this', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 55, 'Isn’t this the carpenter’s son? Isn’t his mother called Mary, and his brothers, James, Joses, Simon, and Judas?', 'Matthew 13:55', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'joses', 'mother', 'judas', 'mary', 'james', 'this', 'brothers', 'simon', 'carpenter’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 56, 'Aren’t all of his sisters with us? Where then did this man get all of these things?”', 'Matthew 13:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'then', 'these', 'sisters', 'this', 'aren’t', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 57, 'They were offended by him.
But Jesus said to them,
“A prophet is not without honor, except in his own country, and in his own house.”', 'Matthew 13:57', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['house', 'prophet', 'they', 'without', 'except', 'jesus', 'offended', 'honor', 'said', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_13}', 58, 'He didn’t do many mighty works there because of their unbelief.', 'Matthew 13:58', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'because', 'unbelief', 'didn’t', 'there', 'many', 'works', 'mighty']::TEXT[], NOW());

-- Matthew Chapter 14 (36 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 1, 'At that time, Herod the tetrarch heard the report concerning Jesus,', 'Matthew 14:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['herod', 'time', 'report', 'tetrarch', 'jesus', 'heard', 'that', 'concerning']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 2, 'and said to his servants, “This is John the Baptizer. He is risen from the dead. That is why these powers work in him.”', 'Matthew 14:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'risen', 'john', 'these', 'powers', 'work', 'dead', 'said', 'baptizer', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 3, 'For Herod had laid hold of John, and bound him, and put him in prison for the sake of Herodias, his brother Philip’s wife.', 'Matthew 14:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['philip’s', 'herod', 'prison', 'john', 'bound', 'brother', 'wife', 'herodias', 'hold', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 4, 'For John said to him, “It is not lawful for you to have her.”', 'Matthew 14:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['said', 'lawful', 'have', 'john']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 5, 'When he would have put him to death, he feared the multitude, because they counted him as a prophet.', 'Matthew 14:5', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['counted', 'they', 'feared', 'multitude', 'would', 'because', 'death', 'have', 'when', 'prophet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 6, 'But when Herod’s birthday came, the daughter of Herodias danced among them and pleased Herod.', 'Matthew 14:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['herod', 'herod’s', 'daughter', 'birthday', 'herodias', 'among', 'danced', 'when', 'pleased', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 7, 'Whereupon he promised with an oath to give her whatever she should ask.', 'Matthew 14:7', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['oath', 'whatever', 'should', 'give', 'promised', 'whereupon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 8, 'She, being prompted by her mother, said, “Give me here on a platter the head of John the Baptizer.”', 'Matthew 14:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['prompted', 'mother', 'john', 'platter', 'being', 'said', 'baptizer', '“give', 'head', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 9, 'The king was grieved, but for the sake of his oaths, and of those who sat at the table with him, he commanded it to be given,', 'Matthew 14:9', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['given', 'king', 'those', 'grieved', 'table', 'commanded', 'oaths', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 10, 'and he sent and beheaded John in the prison.', 'Matthew 14:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['sent', 'prison', 'john', 'beheaded']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 11, 'His head was brought on a platter, and given to the young lady: and she brought it to her mother.', 'Matthew 14:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['lady:', 'mother', 'given', 'platter', 'brought', 'head', 'young']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 12, 'His disciples came, and took the body, and buried it; and they went and told Jesus.', 'Matthew 14:12', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'went', 'jesus', 'took', 'body', 'buried', 'told', 'disciples', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 13, 'Now when Jesus heard this, he withdrew from there in a boat, to a deserted place apart. When the multitudes heard it, they followed him on foot from the cities.', 'Matthew 14:13', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['boat', 'withdrew', 'they', 'followed', 'jesus', 'deserted', 'multitudes', 'place', 'apart', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 14, 'Jesus went out, and he saw a great multitude. He had compassion on them, and healed their sick.', 'Matthew 14:14', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['their', 'multitude', 'went', 'jesus', 'compassion', 'sick', 'healed', 'great', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 15, 'When evening had come, his disciples came to him, saying, “This place is deserted, and the hour is already late. Send the multitudes away, that they may go into the villages, and buy themselves food.”', 'Matthew 14:15', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'saying', 'villages', 'deserted', 'already', 'multitudes', 'away', '“this', 'send', 'late']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 16, 'But Jesus said to them,
“They don’t need to go away. You give them something to eat.”', 'Matthew 14:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['something', 'need', 'jesus', 'give', 'said', '“they', 'away', 'them', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 17, 'They told him, “We only have here five loaves and two fish.”', 'Matthew 14:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['five', 'they', 'loaves', 'only', 'have', 'told', 'fish', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 18, 'He said,
“Bring them here to me.”', 'Matthew 14:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['“bring', 'said', 'them', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 19, 'He commanded the multitudes to sit down on the grass; and he took the five loaves and the two fish, and looking up to heaven, he blessed, broke and gave the loaves to the disciples, and the disciples gave to the multitudes.', 'Matthew 14:19', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['five', 'gave', 'disciples', 'loaves', 'took', 'multitudes', 'blessed', 'looking', 'grass;', 'commanded']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 20, 'They all ate, and were filled. They took up twelve baskets full of that which remained left over from the broken pieces.', 'Matthew 14:20', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['over', 'they', 'broken', 'which', 'took', 'filled', 'baskets', 'full', 'left', 'remained']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 21, 'Those who ate were about five thousand men, besides women and children.', 'Matthew 14:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['five', 'children', 'besides', 'those', 'thousand', 'women', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 22, 'Immediately Jesus made the disciples get into the boat, and to go ahead of him to the other side, while he sent the multitudes away.', 'Matthew 14:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['made', 'jesus', 'multitudes', 'side', 'ahead', 'other', 'immediately', 'away', 'while', 'boat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 23, 'After he had sent the multitudes away, he went up into the mountain by himself to pray. When evening had come, he was there alone.', 'Matthew 14:23', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['after', 'went', 'pray', 'multitudes', 'himself', 'mountain', 'there', 'away', 'evening', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 24, 'But the boat was now in the middle of the sea, distressed by the waves, for the wind was contrary.', 'Matthew 14:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['waves', 'wind', 'distressed', 'contrary', 'boat', 'middle']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 25, 'In the fourth watch of the night, Jesus came to them, walking on the sea.', 'Matthew 14:25', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['walking', 'jesus', 'night', 'watch', 'fourth', 'them', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 26, 'When the disciples saw him walking on the sea, they were troubled, saying, “It’s a ghost!” and they cried out for fear.', 'Matthew 14:26', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['they', 'walking', 'saying', '“it’s', 'troubled', 'ghost', 'fear', 'when', 'cried', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 27, 'But immediately Jesus spoke to them, saying,
“Cheer up! It is I!

Don’t be afraid.”', 'Matthew 14:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'jesus', 'spoke', 'afraid', 'immediately', '“cheer', 'them', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 28, 'Peter answered him and said, “Lord, if it is you, command me to come to you on the waters.”', 'Matthew 14:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['command', 'waters', '“lord', 'peter', 'said', 'come', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 29, 'He said,
“Come!”
Peter stepped down from the boat, and walked on the waters to come to Jesus.', 'Matthew 14:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['waters', '“come', 'jesus', 'peter', 'said', 'stepped', 'come', 'boat', 'down', 'walked']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 30, 'But when he saw that the wind was strong, he was afraid, and beginning to sink, he cried out, saying, “Lord, save me!”', 'Matthew 14:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['beginning', 'saying', 'wind', '“lord', 'save', 'afraid', 'sink', 'when', 'strong', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 31, 'Immediately Jesus stretched out his hand, took hold of him, and said to him,
“You of little faith, why did you doubt?”', 'Matthew 14:31', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['jesus', 'took', '“you', 'immediately', 'stretched', 'hand', 'hold', 'said', 'doubt', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 32, 'When they got up into the boat, the wind ceased.', 'Matthew 14:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'wind', 'ceased', 'when', 'boat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 33, 'Those who were in the boat came and worshiped him, saying, “You are truly the Son of God!”', 'Matthew 14:33', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['saying', 'worshiped', 'those', '“you', 'truly', 'boat', 'came', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 34, 'When they had crossed over, they came to the land of Gennesaret.', 'Matthew 14:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'they', 'land', 'gennesaret', 'crossed', 'when', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 35, 'When the people of that place recognized him, they sent into all that surrounding region, and brought to him all who were sick;', 'Matthew 14:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'surrounding', 'place', 'recognized', 'sick;', 'brought', 'when', 'region', 'that', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_14}', 36, 'and they begged him that they might just touch the fringe of his garment. As many as touched it were made whole.', 'Matthew 14:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['just', 'might', 'fringe', 'they', 'garment', 'many', 'whole', 'touched', 'that', 'were']::TEXT[], NOW());

-- Matthew Chapter 15 (39 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 1, 'Then Pharisees and scribes came to Jesus from Jerusalem, saying,', 'Matthew 15:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['scribes', 'saying', 'jesus', 'jerusalem', 'then', 'came', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 2, '“Why do your disciples disobey the tradition of the elders? For they don’t wash their hands when they eat bread.”', 'Matthew 15:2', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'wash', 'their', 'elders', 'don’t', 'tradition', '“why', 'your', 'when', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 3, 'He answered them,
“Why do you also disobey the commandment of God because of your tradition?', 'Matthew 15:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['because', 'commandment', 'tradition', '“why', 'also', 'your', 'them', 'disobey', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 4, 'For God commanded, ‘Honor your father and your mother,’
and, ‘He who speaks evil of father or mother, let him be put to death.’', 'Matthew 15:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['mother', 'speaks', 'death', '‘honor', 'your', 'father', 'commanded', 'evil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 5, 'But you say, ‘Whoever may tell his father or his mother, “Whatever help you might otherwise have gotten from me is a gift devoted to God,”', 'Matthew 15:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['help', 'might', '‘whoever', 'mother', 'tell', 'gotten', 'otherwise', 'gift', 'have', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 6, 'he shall not honor his father or mother.’ You have made the commandment of God void because of your tradition.', 'Matthew 15:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['mother', 'because', 'shall', 'commandment', 'honor', 'have', 'tradition', 'father', 'void', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 7, 'You hypocrites! Well did Isaiah prophesy of you, saying,', 'Matthew 15:7', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['well', 'isaiah', 'saying', 'prophesy', 'hypocrites']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 8, '‘These people draw near to me with their mouth,
and honor me with their lips;
but their heart is far from me.', 'Matthew 15:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'lips;', 'honor', 'draw', 'near', 'heart', 'people', '‘these', 'mouth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 9, 'And in vain do they worship me,
teaching as doctrine rules made by men.’”', 'Matthew 15:9', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['doctrine', 'worship', 'they', 'teaching', 'rules', 'vain', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 10, 'He summoned the multitude, and said to them,
“Hear, and understand.', 'Matthew 15:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['multitude', 'summoned', 'understand', 'said', 'them', '“hear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 11, 'That which enters into the mouth doesn’t defile the man; but that which proceeds out of the mouth, this defiles the man.”', 'Matthew 15:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'proceeds', 'defile', 'man;', 'this', 'enters', 'that', 'defiles', 'doesn’t', 'mouth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 12, 'Then the disciples came, and said to him, “Do you know that the Pharisees were offended, when they heard this saying?”', 'Matthew 15:12', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'saying', 'know', 'offended', 'this', 'said', 'when', 'heard', 'that', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 13, 'But he answered,
“Every plant which my heavenly Father didn’t plant will be uprooted.', 'Matthew 15:13', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['which', 'will', '“every', 'plant', 'didn’t', 'heavenly', 'father', 'uprooted', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 14, 'Leave them alone. They are blind guides of the blind. If the blind guide the blind, both will fall into a pit.”', 'Matthew 15:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'guides', 'leave', 'fall', 'will', 'both', 'alone', 'guide', 'them', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 15, 'Peter answered him, “Explain the parable to us.”', 'Matthew 15:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['parable', '“explain', 'peter', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 16, 'So Jesus said,
“Do you also still not understand?', 'Matthew 15:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'still', 'understand', 'said', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 17, 'Don’t you understand that whatever goes into the mouth passes into the belly, and then out of the body?', 'Matthew 15:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['belly', 'whatever', 'understand', 'body', 'passes', 'that', 'then', 'goes', 'don’t', 'mouth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 18, 'But the things which proceed out of the mouth come out of the heart, and they defile the man.', 'Matthew 15:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['proceed', 'things', 'they', 'which', 'defile', 'come', 'heart', 'mouth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 19, 'For out of the heart come evil thoughts, murders, adulteries, sexual sins, thefts, false testimony, and blasphemies.', 'Matthew 15:19', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['false', 'testimony', 'sexual', 'murders', 'sins', 'blasphemies', 'come', 'evil', 'thefts', 'heart']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 20, 'These are the things which defile the man; but to eat with unwashed hands doesn’t defile the man.”', 'Matthew 15:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'which', 'these', 'doesn’t', 'man;', 'defile', 'unwashed', 'hands']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 21, 'Jesus went out from there, and withdrew into the region of Tyre and Sidon.', 'Matthew 15:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['withdrew', 'tyre', 'went', 'sidon', 'jesus', 'there', 'region']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 22, 'Behold, a Canaanite woman came out from those borders, and cried, saying, “Have mercy on me, Lord, you son of David! My daughter is severely possessed by a demon!”', 'Matthew 15:22', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['possessed', 'woman', 'saying', 'david', 'daughter', 'borders', 'severely', 'demon', 'those', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 23, 'But he answered her not a word.
His disciples came and begged him, saying, “Send her away; for she cries after us.”', 'Matthew 15:23', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['answered', 'after', 'saying', '“send', 'word', 'away;', 'cries', 'disciples', 'came', 'begged']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 24, 'But he answered,
“I wasn’t sent to anyone but the lost sheep of the house of Israel.”', 'Matthew 15:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'anyone', 'answered', 'sheep', 'wasn’t', 'israel', 'sent', 'lost']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 25, 'But she came and worshiped him, saying, “Lord, help me.”', 'Matthew 15:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['help', '“lord', 'saying', 'worshiped', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 26, 'But he answered,
“It is not appropriate to take the children’s bread and throw it to the dogs.”', 'Matthew 15:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['appropriate', 'children’s', 'take', 'dogs', 'throw', 'bread', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 27, 'But she said, “Yes, Lord, but even the dogs eat the crumbs which fall from their masters’ table.”', 'Matthew 15:27', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['masters’', 'crumbs', '“yes', 'their', 'fall', 'which', 'dogs', 'even', 'table', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 28, 'Then Jesus answered her,
“Woman, great is your faith! Be it done to you even as you desire.” And her daughter was healed from that hour.', 'Matthew 15:28', 'WEB', ARRAY['Faith', 'Miracle']::TEXT[], ARRAY['done', 'jesus', 'daughter', 'hour', 'even', '“woman', 'desire', 'healed', 'your', 'great']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 29, 'Jesus departed from there, and came near to the sea of Galilee; and he went up into the mountain, and sat there.', 'Matthew 15:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'jesus', 'mountain', 'there', 'near', 'galilee;', 'came', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 30, 'Great multitudes came to him, having with them the lame, blind, mute, maimed, and many others, and they put them down at his feet. He healed them,', 'Matthew 15:30', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['they', 'down', 'feet', 'multitudes', 'lame', 'maimed', 'others', 'many', 'healed', 'mute']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 31, 'so that the multitude wondered when they saw the mute speaking, the injured healed, the lame walking, and the blind seeing—and they glorified the God of Israel.', 'Matthew 15:31', 'WEB', ARRAY['Kingdom', 'Miracle']::TEXT[], ARRAY['they', 'seeing—and', 'wondered', 'multitude', 'injured', 'walking', 'lame', 'healed', 'glorified', 'israel']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 32, 'Jesus summoned his disciples and said,
“I have compassion on the multitude, because they continue with me now three days and have nothing to eat. I don’t want to send them away fasting, or they might faint on the way.”', 'Matthew 15:32', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['might', 'they', 'multitude', 'days', 'away', 'them', 'want', 'send', 'compassion', 'fasting']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 33, 'The disciples said to him, “Where should we get so many loaves in a deserted place as to satisfy so great a multitude?”', 'Matthew 15:33', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['should', '“where', 'loaves', 'multitude', 'deserted', 'place', 'many', 'said', 'great', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 34, 'Jesus said to them,
“How many loaves do you have?”
They said, “Seven, and a few small fish.”', 'Matthew 15:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'jesus', 'loaves', '“seven', 'small', 'many', 'said', 'have', 'fish', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 35, 'He commanded the multitude to sit down on the ground;', 'Matthew 15:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['commanded', 'down', 'ground;', 'multitude']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 36, 'and he took the seven loaves and the fish. He gave thanks and broke them, and gave to the disciples, and the disciples to the multitudes.', 'Matthew 15:36', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['gave', 'loaves', 'took', 'them', 'multitudes', 'thanks', 'seven', 'fish', 'disciples', 'broke']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 37, 'They all ate, and were filled. They took up seven baskets full of the broken pieces that were left over.', 'Matthew 15:37', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['over', 'they', 'broken', 'took', 'filled', 'baskets', 'full', 'left', 'that', 'seven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 38, 'Those who ate were four thousand men, besides women and children.', 'Matthew 15:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'four', 'besides', 'those', 'thousand', 'women', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_15}', 39, 'Then he sent away the multitudes, got into the boat, and came into the borders of Magdala.', 'Matthew 15:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['multitudes', 'borders', 'away', 'magdala', 'boat', 'then', 'sent', 'came']::TEXT[], NOW());

-- Matthew Chapter 16 (28 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 1, 'The Pharisees and Sadducees came, and testing him, asked him to show them a sign from heaven.', 'Matthew 16:1', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['sign', 'asked', 'testing', 'show', 'sadducees', 'them', 'heaven', 'came', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 2, 'But he answered them,
“When it is evening, you say, ‘It will be fair weather, for the sky is red.’', 'Matthew 16:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'fair', 'evening', '“when', 'weather', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 3, 'In the morning, ‘It will be foul weather today, for the sky is red and threatening.’ Hypocrites! You know how to discern the appearance of the sky, but you can’t discern the signs of the times!', 'Matthew 16:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['threatening', 'appearance', 'foul', 'times', 'hypocrites', 'can’t', 'will', 'know', 'discern', 'today']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 4, 'An evil and adulterous generation seeks after a sign, and there will be no sign given to it, except the sign of the prophet Jonah.”
He left them, and departed.', 'Matthew 16:4', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['sign', 'jonah', 'after', 'adulterous', 'except', 'given', 'will', 'seeks', 'them', 'left']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 5, 'The disciples came to the other side and had forgotten to take bread.', 'Matthew 16:5', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['take', 'side', 'other', 'forgotten', 'bread', 'disciples', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 6, 'Jesus said to them,
“Take heed and beware of the yeast of the Pharisees and Sadducees.”', 'Matthew 16:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['sadducees', 'heed', 'jesus', 'beware', 'said', 'yeast', 'pharisees', 'them', '“take']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 7, 'They reasoned among themselves, saying, “We brought no bread.”', 'Matthew 16:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'saying', 'among', 'brought', 'reasoned', 'bread', 'themselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 8, 'Jesus, perceiving it, said,
“Why do you reason among yourselves, you of little faith, ‘because you have brought no bread?’', 'Matthew 16:8', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['jesus', '‘because', 'among', 'said', '“why', 'perceiving', 'have', 'brought', 'bread', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 9, 'Don’t you yet perceive, neither remember the five loaves for the five thousand, and how many baskets you took up?', 'Matthew 16:9', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['five', 'remember', 'loaves', 'took', 'perceive', 'baskets', 'many', 'neither', 'thousand', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 10, 'Nor the seven loaves for the four thousand, and how many baskets you took up?', 'Matthew 16:10', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['loaves', 'took', 'four', 'baskets', 'many', 'thousand', 'seven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 11, 'How is it that you don’t perceive that I didn’t speak to you concerning bread? But beware of the yeast of the Pharisees and Sadducees.”', 'Matthew 16:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['pharisees', 'sadducees', 'perceive', 'didn’t', 'yeast', 'that', 'speak', 'bread', 'concerning', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 12, 'Then they understood that he didn’t tell them to beware of the yeast of bread, but of the teaching of the Pharisees and Sadducees.', 'Matthew 16:12', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['pharisees', 'they', 'sadducees', 'understood', 'tell', 'teaching', 'didn’t', 'yeast', 'that', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 13, 'Now when Jesus came into the parts of Caesarea Philippi, he asked his disciples, saying,
“Who do men say that I, the Son of Man, am?”', 'Matthew 16:13', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['parts', 'asked', 'saying', 'jesus', 'that', 'caesarea', 'when', 'philippi', '“who', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 14, 'They said, “Some say John the Baptizer, some, Elijah, and others, Jeremiah, or one of the prophets.”', 'Matthew 16:14', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['they', 'john', '“some', 'others', 'said', 'some', 'elijah', 'baptizer', 'jeremiah', 'prophets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 15, 'He said to them,
“But who do you say that I am?”', 'Matthew 16:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['that', '“but', 'said', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 16, 'Simon Peter answered, “You are the Christ, the Son of the living God.”', 'Matthew 16:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['peter', '“you', 'living', 'simon', 'christ', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 17, 'Jesus answered him,
“Blessed are you, Simon Bar Jonah, for flesh and blood has not revealed this to you, but my Father who is in heaven.', 'Matthew 16:17', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['jonah', 'revealed', 'jesus', 'flesh', 'this', 'blood', '“blessed', 'father', 'simon', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 18, 'I also tell you that you are Peter,
and on this rock

I will build my assembly, and the gates of Hades
will not prevail against it.', 'Matthew 16:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['tell', 'will', 'hades', 'gates', 'peter', 'this', 'against', 'also', 'assembly', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 19, 'I will give to you the keys of the Kingdom of Heaven, and whatever you bind on earth will have been bound in heaven; and whatever you release on earth will have been released in heaven.”', 'Matthew 16:19', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['been', 'bind', 'whatever', 'will', 'give', 'bound', 'kingdom', 'earth', 'have', 'heaven;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 20, 'Then he commanded the disciples that they should tell no one that he was Jesus the Christ.', 'Matthew 16:20', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'should', 'tell', 'jesus', 'that', 'commanded', 'then', 'disciples', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 21, 'From that time, Jesus began to show his disciples that he must go to Jerusalem and suffer many things from the elders, chief priests, and scribes, and be killed, and the third day be raised up.', 'Matthew 16:21', 'WEB', ARRAY['Miracle', 'Discipleship']::TEXT[], ARRAY['things', 'time', 'suffer', 'elders', 'scribes', 'jesus', 'show', 'priests', 'many', 'must']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 22, 'Peter took him aside, and began to rebuke him, saying, “Far be it from you, Lord! This will never be done to you.”', 'Matthew 16:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'done', 'rebuke', 'took', 'will', 'never', 'peter', 'this', '“far', 'began']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 23, 'But he turned, and said to Peter,
“Get behind me, Satan! You are a stumbling block to me, for you are not setting your mind on the things of God, but on the things of men.”', 'Matthew 16:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['“get', 'stumbling', 'things', 'setting', 'peter', 'turned', 'said', 'block', 'mind', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 24, 'Then Jesus said to his disciples,
“If anyone desires to come after me, let him deny himself, and take up his cross, and follow me.', 'Matthew 16:24', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['anyone', 'after', 'deny', 'jesus', 'desires', 'take', 'himself', 'said', 'come', 'follow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 25, 'For whoever desires to save his life will lose it, and whoever will lose his life for my sake will find it.', 'Matthew 16:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['find', 'save', 'life', 'will', 'desires', 'lose', 'whoever', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 26, 'For what will it profit a man, if he gains the whole world, and forfeits his life? Or what will a man give in exchange for his life?', 'Matthew 16:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'gains', 'life', 'forfeits', 'will', 'give', 'whole', 'exchange', 'world', 'profit']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 27, 'For the Son of Man will come in the glory of his Father with his angels, and then he will render to everyone according to his deeds.', 'Matthew 16:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['render', 'will', 'deeds', 'everyone', 'come', 'father', 'then', 'glory', 'according', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_16}', 28, 'Most certainly I tell you, there are some standing here who will in no way taste of death, until they see the Son of Man coming in his Kingdom.”', 'Matthew 16:28', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['most', 'they', 'standing', 'tell', 'coming', 'will', 'death', 'until', 'kingdom', 'there']::TEXT[], NOW());

-- Matthew Chapter 17 (27 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 1, 'After six days, Jesus took with him Peter, James, and John his brother, and brought them up into a high mountain by themselves.', 'Matthew 17:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['after', 'john', 'jesus', 'high', 'days', 'took', 'james', 'peter', 'brother', 'mountain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 2, 'He was transfigured before them. His face shone like the sun, and his garments became as white as the light.', 'Matthew 17:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['face', 'became', 'transfigured', 'white', 'shone', 'garments', 'light', 'before', 'like', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 3, 'Behold, Moses and Elijah appeared to them talking with him.', 'Matthew 17:3', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['elijah', 'behold', 'appeared', 'them', 'moses', 'talking']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 4, 'Peter answered, and said to Jesus, “Lord, it is good for us to be here. If you want, let’s make three tents here: one for you, one for Moses, and one for Elijah.”', 'Matthew 17:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['want', '“lord', 'let’s', 'jesus', 'good', 'peter', 'make', 'said', 'elijah', 'tents']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 5, 'While he was still speaking, behold, a bright cloud overshadowed them. Behold, a voice came out of the cloud, saying, “This is my beloved Son, in whom I am well pleased. Listen to him.”', 'Matthew 17:5', 'WEB', ARRAY['Love', 'Kingdom']::TEXT[], ARRAY['voice', 'well', 'beloved', 'saying', 'overshadowed', 'still', 'bright', 'cloud', 'pleased', 'listen']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 6, 'When the disciples heard it, they fell on their faces, and were very afraid.', 'Matthew 17:6', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'their', 'very', 'afraid', 'fell', 'faces', 'heard', 'when', 'disciples', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 7, 'Jesus came and touched them and said,
“Get up, and don’t be afraid.”', 'Matthew 17:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['“get', 'jesus', 'afraid', 'said', 'touched', 'them', 'don’t', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 8, 'Lifting up their eyes, they saw no one, except Jesus alone.', 'Matthew 17:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'they', 'except', 'jesus', 'lifting', 'alone', 'eyes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 9, 'As they were coming down from the mountain, Jesus commanded them, saying,
“Don’t tell anyone what you saw, until the Son of Man has risen from the dead.”', 'Matthew 17:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['risen', 'anyone', 'they', 'what', 'coming', 'saying', 'jesus', '“don’t', 'tell', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 10, 'His disciples asked him, saying, “Then why do the scribes say that Elijah must come first?”', 'Matthew 17:10', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['first', 'asked', 'scribes', 'saying', 'elijah', 'must', 'that', 'come', '“then', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 11, 'Jesus answered them,
“Elijah indeed comes first, and will restore all things,', 'Matthew 17:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'things', '“elijah', 'restore', 'jesus', 'comes', 'will', 'indeed', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 12, 'but I tell you that Elijah has come already, and they didn’t recognize him, but did to him whatever they wanted to. Even so the Son of Man will also suffer by them.”', 'Matthew 17:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'recognize', 'whatever', 'wanted', 'tell', 'suffer', 'will', 'already', 'even', 'didn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 13, 'Then the disciples understood that he spoke to them of John the Baptizer.', 'Matthew 17:13', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['understood', 'john', 'spoke', 'baptizer', 'that', 'then', 'them', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 14, 'When they came to the multitude, a man came to him, kneeling down to him, and saying,', 'Matthew 17:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['kneeling', 'they', 'multitude', 'saying', 'when', 'down', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 15, '“Lord, have mercy on my son, for he is epileptic, and suffers grievously; for he often falls into the fire, and often into the water.', 'Matthew 17:15', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['fire', 'epileptic', 'falls', '“lord', 'have', 'suffers', 'often', 'water', 'grievously;', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 16, 'So I brought him to your disciples, and they could not cure him.”', 'Matthew 17:16', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'could', 'cure', 'brought', 'your', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 17, 'Jesus answered,
“Faithless and perverse generation! How long will I be with you? How long will I bear with you? Bring him here to me.”', 'Matthew 17:17', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['“faithless', 'jesus', 'will', 'bring', 'generation', 'perverse', 'long', 'bear', 'here', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 18, 'Jesus rebuked him, the demon went out of him, and the boy was cured from that hour.', 'Matthew 17:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'jesus', 'hour', 'demon', 'rebuked', 'that', 'cured']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 19, 'Then the disciples came to Jesus privately, and said, “Why weren’t we able to cast it out?”', 'Matthew 17:19', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['privately', 'jesus', 'weren’t', 'said', '“why', 'able', 'then', 'disciples', 'came', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 20, 'He said to them,
“Because of your unbelief. For most certainly I tell you, if you have faith as a grain of mustard seed, you will tell this mountain, ‘Move from here to there,’ and it will move; and nothing will be impossible for you.', 'Matthew 17:20', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['most', 'unbelief', 'mountain', '“because', 'your', 'them', 'certainly', 'will', 'this', 'there']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 21, 'But this kind doesn’t go out except by prayer and fasting.”', 'Matthew 17:21', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['except', 'kind', 'this', 'fasting', 'prayer', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 22, 'While they were staying in Galilee, Jesus said to them,
“The Son of Man is about to be delivered up into the hands of men,', 'Matthew 17:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['staying', 'they', '“the', 'jesus', 'delivered', 'galilee', 'said', 'while', 'them', 'hands']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 23, 'and they will kill him, and the third day he will be raised up.”

They were exceedingly sorry.', 'Matthew 17:23', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['they', 'will', 'exceedingly', 'third', 'raised', 'were', 'kill', 'sorry']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 24, 'When they had come to Capernaum, those who collected the didrachma coins came to Peter, and said, “Doesn’t your teacher pay the didrachma?”', 'Matthew 17:24', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['they', 'teacher', 'coins', '“doesn’t', 'peter', 'those', 'didrachma', 'said', 'come', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 25, 'He said, “Yes.”
When he came into the house, Jesus anticipated him, saying,
“What do you think, Simon? From whom do the kings of the earth receive toll or tribute? From their children, or from strangers?”', 'Matthew 17:25', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['think', 'saying', 'kings', 'whom', 'children', 'anticipated', 'tribute', 'earth', 'toll', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 26, 'Peter said to him, “From strangers.”
Jesus said to him,
“Therefore the children are exempt.', 'Matthew 17:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['“from', 'children', '“therefore', 'jesus', 'exempt', 'peter', 'said', 'strangers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_17}', 27, 'But, lest we cause them to stumble, go to the sea, cast a hook, and take up the first fish that comes up. When you have opened its mouth, you will find a stater coin.
Take that, and give it to them for me and you.”', 'Matthew 17:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['lest', 'give', 'stumble', 'opened', 'fish', 'them', 'hook', 'find', 'take', 'will']::TEXT[], NOW());

-- Matthew Chapter 18 (35 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 1, 'In that hour the disciples came to Jesus, saying, “Who then is greatest in the Kingdom of Heaven?”', 'Matthew 18:1', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['heaven', 'saying', 'jesus', 'hour', 'kingdom', 'greatest', 'that', 'then', '“who', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 2, 'Jesus called a little child to himself, and set him in the middle of them,', 'Matthew 18:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'himself', 'child', 'little', 'them', 'middle', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 3, 'and said,
“Most certainly I tell you, unless you turn, and become as little children, you will in no way enter into the Kingdom of Heaven.', 'Matthew 18:3', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['unless', 'children', 'tell', 'will', '“most', 'become', 'kingdom', 'said', 'enter', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 4, 'Whoever therefore humbles himself as this little child, the same is the greatest in the Kingdom of Heaven.', 'Matthew 18:4', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['therefore', 'humbles', 'himself', 'child', 'whoever', 'this', 'same', 'greatest', 'heaven', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 5, 'Whoever receives one such little child in my name receives me,', 'Matthew 18:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['name', 'child', 'whoever', 'such', 'little', 'receives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 6, 'but whoever causes one of these little ones who believe in me to stumble, it would be better for him that a huge millstone should be hung around his neck, and that he should be sunk in the depths of the sea.', 'Matthew 18:6', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['depths', 'huge', 'should', 'sunk', 'would', 'these', 'around', 'neck', 'stumble', 'whoever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 7, '“Woe to the world because of occasions of stumbling! For it must be that the occasions come, but woe to that person through whom the occasion comes!', 'Matthew 18:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['stumbling', 'because', 'comes', 'person', 'occasions', 'that', 'come', 'world', '“woe', 'occasion']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 8, 'If your hand or your foot causes you to stumble, cut it off, and cast it from you. It is better for you to enter into life maimed or crippled, rather than having two hands or two feet to be cast into the eternal fire.', 'Matthew 18:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['hands', 'than', 'fire', 'life', 'feet', 'maimed', 'crippled', 'stumble', 'foot', 'hand']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 9, 'If your eye causes you to stumble, pluck it out, and cast it from you. It is better for you to enter into life with one eye, rather than having two eyes to be cast into the Gehenna
of fire.', 'Matthew 18:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['fire', 'than', 'life', 'stumble', 'pluck', 'better', 'your', 'enter', 'rather', 'eyes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 10, 'See that you don’t despise one of these little ones, for I tell you that in heaven their angels always see the face of my Father who is in heaven.', 'Matthew 18:10', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['despise', 'their', 'face', 'tell', 'these', 'always', 'father', 'ones', 'that', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 11, 'For the Son of Man came to save that which was lost.', 'Matthew 18:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['save', 'which', 'that', 'came', 'lost']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 12, '“What do you think? If a man has one hundred sheep, and one of them goes astray, doesn’t he leave the ninety-nine, go to the mountains, and seek that which has gone astray?', 'Matthew 18:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['think', '“what', 'leave', 'sheep', 'hundred', 'seek', 'which', 'gone', 'ninety-nine', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 13, 'If he finds it, most certainly I tell you, he rejoices over it more than over the ninety-nine which have not gone astray.', 'Matthew 18:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'over', 'than', 'gone', 'tell', 'which', 'finds', 'ninety-nine', 'have', 'certainly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 14, 'Even so it is not the will of your Father who is in heaven that one of these little ones should perish.', 'Matthew 18:14', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['should', 'will', 'these', 'even', 'perish', 'father', 'your', 'ones', 'that', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 15, '“If your brother sins against you, go, show him his fault between you and him alone. If he listens to you, you have gained back your brother.', 'Matthew 18:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['fault', 'gained', 'show', 'brother', 'listens', 'sins', 'back', 'against', 'have', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 16, 'But if he doesn’t listen, take one or two more with you, that at the mouth of two or three witnesses every word may be established.', 'Matthew 18:16', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['established', 'take', 'doesn’t', 'word', 'listen', 'every', 'three', 'witnesses', 'that', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 17, 'If he refuses to listen to them, tell it to the assembly. If he refuses to hear the assembly also, let him be to you as a Gentile or a tax collector.', 'Matthew 18:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['collector', 'tell', 'refuses', 'hear', 'gentile', 'listen', 'also', 'assembly', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 18, 'Most certainly I tell you, whatever things you bind on earth will have been bound in heaven, and whatever things you release on earth will have been released in heaven.', 'Matthew 18:18', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['most', 'things', 'been', 'bind', 'whatever', 'tell', 'will', 'bound', 'earth', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 19, 'Again, assuredly I tell you, that if two of you will agree on earth concerning anything that they will ask, it will be done for them by my Father who is in heaven.', 'Matthew 18:19', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['heaven', 'they', 'assuredly', 'agree', 'tell', 'done', 'will', 'them', 'earth', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 20, 'For where two or three are gathered together in my name, there I am in the middle of them.”', 'Matthew 18:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'name', 'there', 'gathered', 'three', 'them', 'where', 'middle']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 21, 'Then Peter came and said to him, “Lord, how often shall my brother sin against me, and I forgive him? Until seven times?”', 'Matthew 18:21', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['times', '“lord', 'shall', 'brother', 'peter', 'until', 'said', 'against', 'forgive', 'often']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 22, 'Jesus said to him,
“I don’t tell you until seven times, but, until seventy times seven.', 'Matthew 18:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['seventy', 'times', 'tell', 'jesus', 'until', 'said', 'seven', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 23, 'Therefore the Kingdom of Heaven is like a certain king, who wanted to reconcile accounts with his servants.', 'Matthew 18:23', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['accounts', 'servants', 'wanted', 'therefore', 'king', 'reconcile', 'certain', 'heaven', 'like', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 24, 'When he had begun to reconcile, one was brought to him who owed him ten thousand talents.', 'Matthew 18:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['reconcile', 'brought', 'when', 'thousand', 'begun', 'talents', 'owed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 25, 'But because he couldn’t pay, his lord commanded him to be sold, with his wife, his children, and all that he had, and payment to be made.', 'Matthew 18:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['sold', 'made', 'children', 'because', 'couldn’t', 'wife', 'payment', 'that', 'commanded', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 26, 'The servant therefore fell down and knelt before him, saying, ‘Lord, have patience with me, and I will repay you all!’', 'Matthew 18:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'saying', 'will', 'repay', 'fell', 'have', 'servant', 'patience', 'knelt', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 27, 'The lord of that servant, being moved with compassion, released him, and forgave him the debt.', 'Matthew 18:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['compassion', 'forgave', 'debt', 'being', 'servant', 'moved', 'released', 'that', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 28, '“But that servant went out, and found one of his fellow servants, who owed him one hundred denarii,
and he grabbed him, and took him by the throat, saying, ‘Pay me what you owe!’', 'Matthew 18:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'servants', 'denarii', 'fellow', 'what', 'went', 'hundred', '“but', 'grabbed', 'took']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 29, '“So his fellow servant fell down at his feet and begged him, saying, ‘Have patience with me, and I will repay you!’', 'Matthew 18:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['fellow', 'saying', 'feet', '‘have', 'will', 'repay', 'fell', 'patience', 'servant', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 30, 'He would not, but went and cast him into prison, until he should pay back that which was due.', 'Matthew 18:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['prison', 'went', 'should', 'would', 'which', 'until', 'back', 'that', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 31, 'So when his fellow servants saw what was done, they were exceedingly sorry, and came and told their lord all that was done.', 'Matthew 18:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'they', 'their', 'what', 'fellow', 'done', 'exceedingly', 'told', 'when', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 32, 'Then his lord called him in, and said to him, ‘You wicked servant! I forgave you all that debt, because you begged me.', 'Matthew 18:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['wicked', 'because', 'begged', 'forgave', 'debt', 'said', 'servant', 'that', 'then', '‘you']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 33, 'Shouldn’t you also have had mercy on your fellow servant, even as I had mercy on you?’', 'Matthew 18:33', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['fellow', 'even', 'have', 'also', 'your', 'servant', 'shouldn’t', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 34, 'His lord was angry, and delivered him to the tormentors, until he should pay all that was due to him.', 'Matthew 18:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['should', 'delivered', 'lord', 'until', 'tormentors', 'that', 'angry']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_18}', 35, 'So my heavenly Father will also do to you, if you don’t each forgive your brother from your hearts for his misdeeds.”', 'Matthew 18:35', 'WEB', ARRAY['Kingdom', 'Forgiveness']::TEXT[], ARRAY['hearts', 'will', 'brother', 'each', 'heavenly', 'also', 'father', 'your', 'forgive', 'don’t']::TEXT[], NOW());

-- Matthew Chapter 19 (30 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 1, 'When Jesus had finished these words, he departed from Galilee, and came into the borders of Judea beyond the Jordan.', 'Matthew 19:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'these', 'borders', 'judea', 'galilee', 'finished', 'words', 'when', 'beyond', 'jordan']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 2, 'Great multitudes followed him, and he healed them there.', 'Matthew 19:2', 'WEB', ARRAY['Miracle', 'Discipleship']::TEXT[], ARRAY['followed', 'multitudes', 'healed', 'there', 'great', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 3, 'Pharisees came to him, testing him, and saying, “Is it lawful for a man to divorce his wife for any reason?”', 'Matthew 19:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['divorce', 'lawful', 'saying', 'testing', 'wife', 'came', 'reason', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 4, 'He answered,
“Haven’t you read that he who made them from the beginning made them male and female,', 'Matthew 19:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['read', 'male', 'beginning', '“haven’t', 'that', 'them', 'made', 'female', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 5, 'and said, ‘For this cause a man shall leave his father and mother, and shall be joined to his wife; and the two shall become one flesh?’', 'Matthew 19:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['leave', 'mother', 'cause', 'shall', '‘for', 'wife;', 'flesh', 'this', 'said', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 6, 'So that they are no more two, but one flesh. What therefore God has joined together, don’t let man tear apart.”', 'Matthew 19:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'they', 'therefore', 'what', 'tear', 'flesh', 'apart', 'joined', 'that', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 7, 'They asked him, “Why then did Moses command us to give her a bill of divorce, and divorce her?”', 'Matthew 19:7', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'they', 'command', 'divorce', 'give', 'bill', '“why', 'then', 'moses']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 8, 'He said to them,
“Moses, because of the hardness of your hearts, allowed you to divorce your wives, but from the beginning it has not been so.', 'Matthew 19:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['divorce', '“moses', 'been', 'allowed', 'because', 'beginning', 'hearts', 'said', 'your', 'wives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 9, 'I tell you that whoever divorces his wife, except for sexual immorality, and marries another, commits adultery; and he who marries her when she is divorced commits adultery.”', 'Matthew 19:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['immorality', 'divorces', 'tell', 'except', 'marries', 'another', 'adultery', 'divorced', 'wife', 'whoever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 10, 'His disciples said to him, “If this is the case of the man with his wife, it is not expedient to marry.”', 'Matthew 19:10', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['wife', 'this', 'said', 'expedient', 'disciples', 'case', 'marry']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 11, 'But he said to them,
“Not all men can receive this saying, but those to whom it is given.', 'Matthew 19:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['“not', 'saying', 'given', 'those', 'this', 'said', 'receive', 'them', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 12, 'For there are eunuchs who were born that way from their mother’s womb, and there are eunuchs who were made eunuchs by men; and there are eunuchs who made themselves eunuchs for the Kingdom of Heaven’s sake. He who is able to receive it, let him receive it.”', 'Matthew 19:12', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['eunuchs', 'their', 'themselves', 'men;', 'sake', 'kingdom', 'there', 'mother’s', 'heaven’s', 'womb']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 13, 'Then little children were brought to him, that he should lay his hands on them and pray; and the disciples rebuked them.', 'Matthew 19:13', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['children', 'should', 'pray;', 'rebuked', 'brought', 'that', 'then', 'little', 'them', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 14, 'But Jesus said,
“Allow the little children, and don’t forbid them to come to me; for the Kingdom of Heaven belongs to ones like these.”', 'Matthew 19:14', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['children', 'belongs', 'like', 'jesus', '“allow', 'these', 'kingdom', 'said', 'come', 'forbid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 15, 'He laid his hands on them, and departed from there.', 'Matthew 19:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['laid', 'there', 'them', 'hands', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 16, 'Behold, one came to him and said, “Good teacher, what good thing shall I do, that I may have eternal life?”', 'Matthew 19:16', 'WEB', ARRAY['Salvation', 'Teaching']::TEXT[], ARRAY['thing', 'teacher', 'what', 'life', 'shall', 'good', 'said', 'have', 'behold', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 17, 'He said to him,
“Why do you call me good?
No one is good but one, that is, God. But if you want to enter into life, keep the commandments.”', 'Matthew 19:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['want', 'life', 'call', 'good', 'commandments', 'said', '“why', 'enter', 'keep', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 18, 'He said to him, “Which ones?”
Jesus said,
“‘You shall not murder.’ ‘You shall not commit adultery.’ ‘You shall not steal.’ ‘You shall not offer false testimony.’', 'Matthew 19:18', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['“which', 'commit', 'false', 'testimony', 'jesus', '“‘you', 'shall', 'adultery', 'offer', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 19, '‘Honor your father and your mother.’
And, ‘You shall love your neighbor as yourself.’”', 'Matthew 19:19', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'mother', 'neighbor', 'shall', 'yourself', '‘honor', 'father', 'your', '‘you']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 20, 'The young man said to him, “All these things I have observed from my youth. What do I still lack?”', 'Matthew 19:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['observed', 'things', 'youth', 'what', 'these', 'still', 'said', 'have', '“all', 'lack']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 21, 'Jesus said to him,
“If you want to be perfect, go, sell what you have, and give to the poor, and you will have treasure in heaven; and come, follow me.”', 'Matthew 19:21', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['want', 'perfect', 'sell', 'what', 'jesus', 'give', 'poor', 'will', 'said', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 22, 'But when the young man heard the saying, he went away sad, for he was one who had great possessions.', 'Matthew 19:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'saying', 'great', 'away', 'possessions', 'heard', 'when', 'young']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 23, 'Jesus said to his disciples,
“Most certainly I say to you, a rich man will enter into the Kingdom of Heaven with difficulty.', 'Matthew 19:23', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['heaven', 'jesus', 'will', '“most', 'kingdom', 'difficulty', 'said', 'rich', 'enter', 'certainly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 24, 'Again I tell you, it is easier for a camel to go through a needle’s eye, than for a rich man to enter into God’s Kingdom.”', 'Matthew 19:24', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['than', 'tell', 'camel', 'god’s', 'kingdom', 'easier', 'rich', 'enter', 'needle’s', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 25, 'When the disciples heard it, they were exceedingly astonished, saying, “Who then can be saved?”', 'Matthew 19:25', 'WEB', ARRAY['Salvation', 'Discipleship']::TEXT[], ARRAY['astonished', 'they', 'saying', 'saved', 'exceedingly', 'heard', 'when', 'then', '“who', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 26, 'Looking at them, Jesus said,
“With men this is impossible, but with God all things are possible.”', 'Matthew 19:26', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['impossible', 'things', 'jesus', 'possible', 'this', 'said', 'looking', '“with', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 27, 'Then Peter answered, “Behold, we have left everything, and followed you. What then will we have?”', 'Matthew 19:27', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'answered', 'what', 'will', 'peter', 'left', 'have', 'then', 'everything', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 28, 'Jesus said to them,
“Most certainly I tell you that you who have followed me, in the regeneration when the Son of Man will sit on the throne of his glory, you also will sit on twelve thrones, judging the twelve tribes of Israel.', 'Matthew 19:28', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', '“most', 'regeneration', 'also', 'them', 'certainly', 'will', 'thrones', 'twelve', 'throne']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 29, 'Everyone who has left houses, or brothers, or sisters, or father, or mother, or wife, or children, or lands, for my name’s sake, will receive one hundred times, and will inherit eternal life.', 'Matthew 19:29', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['hundred', 'life', 'eternal', 'children', 'will', 'sisters', 'brothers', 'houses', 'sake', 'name’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_19}', 30, 'But many will be last who are first; and first who are last.', 'Matthew 19:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'first;', 'will', 'many', 'last']::TEXT[], NOW());

-- Matthew Chapter 20 (34 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 1, '“For the Kingdom of Heaven is like a man who was the master of a household, who went out early in the morning to hire laborers for his vineyard.', 'Matthew 20:1', 'WEB', ARRAY['Kingdom', 'Teaching']::TEXT[], ARRAY['vineyard', 'hire', 'went', 'morning', 'early', 'laborers', 'household', '“for', 'heaven', 'like']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 2, 'When he had agreed with the laborers for a denarius
a day, he sent them into his vineyard.', 'Matthew 20:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['vineyard', 'agreed', 'denarius', 'when', 'sent', 'them', 'laborers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 3, 'He went out about the third hour,
and saw others standing idle in the marketplace.', 'Matthew 20:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['marketplace', 'standing', 'went', 'idle', 'hour', 'others', 'third']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 4, 'He said to them, ‘You also go into the vineyard, and whatever is right I will give you.’ So they went their way.', 'Matthew 20:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['vineyard', 'they', 'their', 'whatever', 'went', 'will', 'give', 'them', 'right', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 5, 'Again he went out about the sixth and the ninth hour,
and did likewise.', 'Matthew 20:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'ninth', 'hour', 'likewise', 'sixth', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 6, 'About the eleventh hour
he went out, and found others standing idle. He said to them, ‘Why do you stand here all day idle?’', 'Matthew 20:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'standing', 'went', 'eleventh', 'idle', 'stand', 'hour', 'others', 'said', '‘why']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 7, '“They said to him, ‘Because no one has hired us.’
“He said to them, ‘You also go into the vineyard, and you will receive whatever is right.’', 'Matthew 20:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['vineyard', 'whatever', 'will', '‘because', '‘you', 'right', 'said', '“they', 'also', 'receive']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 8, 'When evening had come, the lord of the vineyard said to his manager, ‘Call the laborers and pay them their wages, beginning from the last to the first.’', 'Matthew 20:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['vineyard', 'first', 'their', 'beginning', '‘call', 'said', 'come', 'evening', 'manager', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 9, '“When those who were hired at about the eleventh hour came, they each received a denarius.', 'Matthew 20:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'eleventh', 'hour', 'each', 'those', 'received', 'denarius', '“when', 'hired', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 10, 'When the first came, they supposed that they would receive more; and they likewise each received a denarius.', 'Matthew 20:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'they', 'would', 'likewise', 'each', 'supposed', 'receive', 'more;', 'received', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 11, 'When they received it, they murmured against the master of the household,', 'Matthew 20:11', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['they', 'murmured', 'against', 'received', 'household', 'when', 'master']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 12, 'saying, ‘These last have spent one hour, and you have made them equal to us, who have borne the burden of the day and the scorching heat!’', 'Matthew 20:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['spent', 'borne', 'burden', 'saying', 'hour', 'heat', 'have', 'last', 'them', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 13, '“But he answered one of them, ‘Friend, I am doing you no wrong. Didn’t you agree with me for a denarius?', 'Matthew 20:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['agree', '“but', 'them', '‘friend', 'didn’t', 'denarius', 'wrong', 'doing', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 14, 'Take that which is yours, and go your way. It is my desire to give to this last just as much as to you.', 'Matthew 20:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['just', 'which', 'take', 'give', 'this', 'your', 'last', 'that', 'desire', 'yours']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 15, 'Isn’t it lawful for me to do what I want to with what I own? Or is your eye evil, because I am good?’', 'Matthew 20:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'want', 'lawful', 'what', 'because', 'good', 'your', 'evil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 16, 'So the last will be first, and the first last. For many are called, but few are chosen.”', 'Matthew 20:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'will', 'chosen', 'many', 'last', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 17, 'As Jesus was going up to Jerusalem, he took the twelve disciples aside, and on the way he said to them,', 'Matthew 20:17', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['going', 'aside', 'jesus', 'took', 'said', 'jerusalem', 'twelve', 'them', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 18, '“Behold, we are going up to Jerusalem, and the Son of Man will be delivered to the chief priests and scribes, and they will condemn him to death,', 'Matthew 20:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'going', 'scribes', 'condemn', 'will', 'delivered', 'priests', 'death', 'jerusalem', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 19, 'and will hand him over to the Gentiles to mock, to scourge, and to crucify; and the third day he will be raised up.”', 'Matthew 20:19', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['over', 'scourge', 'will', 'gentiles', 'hand', 'mock', 'crucify;', 'third', 'raised']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 20, 'Then the mother of the sons of Zebedee came to him with her sons, kneeling and asking a certain thing of him.', 'Matthew 20:20', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['zebedee', 'thing', 'kneeling', 'sons', 'mother', 'asking', 'certain', 'then', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 21, 'He said to her,
“What do you want?”
She said to him, “Command that these, my two sons, may sit, one on your right hand, and one on your left hand, in your Kingdom.”', 'Matthew 20:21', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['want', '“what', 'these', '“command', 'left', 'right', 'said', 'hand', 'your', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 22, 'But Jesus answered,
“You don’t know what you are asking. Are you able to drink the cup that I am about to drink, and be baptized with the baptism that I am baptized with?”
They said to him, “We are able.”', 'Matthew 20:22', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['they', 'baptized', 'what', 'jesus', 'drink', 'know', '“you', 'said', 'able', 'asking']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 23, 'He said to them,
“You will indeed drink my cup, and be baptized with the baptism that I am baptized with, but to sit on my right hand and on my left hand is not mine to give; but it is for whom it has been prepared by my Father.”', 'Matthew 20:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'baptized', 'mine', 'prepared', 'will', 'drink', 'left', '“you', 'right', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 24, 'When the ten heard it, they were indignant with the two brothers.', 'Matthew 20:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'heard', 'indignant', 'when', 'brothers', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 25, 'But Jesus summoned them, and said,
“You know that the rulers of the nations lord it over them, and their great ones exercise authority over them.', 'Matthew 20:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'their', 'nations', 'summoned', 'jesus', 'authority', 'know', 'rulers', 'exercise', '“you']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 26, 'It shall not be so among you, but whoever desires to become great among you shall be
your servant.', 'Matthew 20:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['shall', 'desires', 'among', 'whoever', 'servant', 'your', 'great', 'become']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 27, 'Whoever desires to be first among you shall be your bondservant,', 'Matthew 20:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'bondservant', 'shall', 'desires', 'whoever', 'among', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 28, 'even as the Son of Man came not to be served, but to serve, and to give his life as a ransom for many.”', 'Matthew 20:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['life', 'give', 'served', 'even', 'many', 'ransom', 'came', 'serve']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 29, 'As they went out from Jericho, a great multitude followed him.', 'Matthew 20:29', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['jericho', 'they', 'followed', 'multitude', 'went', 'great']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 30, 'Behold, two blind men sitting by the road, when they heard that Jesus was passing by, cried out, “Lord, have mercy on us, you son of David!”', 'Matthew 20:30', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['they', '“lord', 'road', 'jesus', 'sitting', 'passing', 'david', 'have', 'that', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 31, 'The multitude rebuked them, telling them that they should be quiet, but they cried out even more, “Lord, have mercy on us, you son of David!”', 'Matthew 20:31', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['they', 'quiet', 'multitude', 'should', '“lord', 'david', 'even', 'rebuked', 'have', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 32, 'Jesus stood still, and called them, and asked,
“What do you want me to do for you?”', 'Matthew 20:32', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'want', '“what', 'jesus', 'still', 'stood', 'them', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 33, 'They told him, “Lord, that our eyes may be opened.”', 'Matthew 20:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', '“lord', 'opened', 'told', 'that', 'eyes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_20}', 34, 'Jesus, being moved with compassion, touched their eyes; and immediately their eyes received their sight, and they followed him.', 'Matthew 20:34', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'their', 'they', 'sight', 'jesus', 'compassion', 'eyes;', 'being', 'immediately', 'received']::TEXT[], NOW());

-- Matthew Chapter 21 (46 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 1, 'When they came near to Jerusalem, and came to Bethsphage, to the Mount of Olives, then Jesus sent two disciples,', 'Matthew 21:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'mount', 'olives', 'jesus', 'near', 'bethsphage', 'when', 'jerusalem', 'then', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 2, 'saying to them,
“Go into the village that is opposite you, and immediately you will find a donkey tied, and a colt with her. Untie them, and bring them to me.', 'Matthew 21:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['tied', 'colt', 'find', 'saying', 'will', 'untie', 'donkey', 'immediately', 'that', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 3, 'If anyone says anything to you, you shall say, ‘The Lord needs them,’ and immediately he will send them.”', 'Matthew 21:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'send', '‘the', 'shall', 'will', 'immediately', 'says', 'needs', 'anything', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 4, 'All this was done, that it might be fulfilled which was spoken through the prophet, saying,', 'Matthew 21:4', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'saying', 'done', 'which', 'fulfilled', 'spoken', 'this', 'that', 'prophet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 5, '“Tell the daughter of Zion,
behold, your King comes to you,
humble, and riding on a donkey,
on a colt, the foal of a donkey.”', 'Matthew 21:5', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['riding', 'colt', 'daughter', 'comes', 'king', 'foal', 'donkey', 'your', 'humble', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 6, 'The disciples went, and did just as Jesus commanded them,', 'Matthew 21:6', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['just', 'went', 'jesus', 'commanded', 'them', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 7, 'and brought the donkey and the colt, and laid their clothes on them; and he sat on them.', 'Matthew 21:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['clothes', 'their', 'colt', 'donkey', 'brought', 'them;', 'them', 'laid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 8, 'A very great multitude spread their clothes on the road. Others cut branches from the trees, and spread them on the road.', 'Matthew 21:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['spread', 'clothes', 'their', 'multitude', 'road', 'others', 'very', 'great', 'them', 'branches']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 9, 'The multitudes who went in front of him, and those who followed, kept shouting, “Hosanna
 to the son of David! Blessed is he who comes in the name of the Lord! Hosanna in the highest!”', 'Matthew 21:9', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'name', 'went', '“hosanna', 'david', 'comes', 'multitudes', 'lord', 'highest', 'those']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 10, 'When he had come into Jerusalem, all the city was stirred up, saying, “Who is this?”', 'Matthew 21:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['stirred', 'city', 'saying', 'this', 'come', 'when', 'jerusalem', '“who']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 11, 'The multitudes said, “This is the prophet, Jesus, from Nazareth of Galilee.”', 'Matthew 21:11', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['jesus', 'multitudes', 'galilee', 'said', 'nazareth', '“this', 'prophet']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 12, 'Jesus entered into the temple of God, and drove out all of those who sold and bought in the temple, and overthrew the money changers’ tables and the seats of those who sold the doves.', 'Matthew 21:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['sold', 'bought', 'seats', 'changers’', 'entered', 'jesus', 'money', 'temple', 'those', 'tables']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 13, 'He said to them,
“It is written, ‘My house shall be called a house of prayer,’
but you have made it a den of robbers!”', 'Matthew 21:13', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['house', 'written', 'shall', 'said', 'have', 'prayer', 'robbers', 'them', 'made', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 14, 'The blind and the lame came to him in the temple, and he healed them.', 'Matthew 21:14', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['lame', 'temple', 'healed', 'them', 'came', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 15, 'But when the chief priests and the scribes saw the wonderful things that he did, and the children who were crying in the temple and saying, “Hosanna to the son of David!” they were indignant,', 'Matthew 21:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'children', 'they', 'scribes', 'saying', '“hosanna', 'david', 'priests', 'temple', 'crying']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 16, 'and said to him, “Do you hear what these are saying?”
Jesus said to them,
“Yes. Did you never read, ‘Out of the mouth of babes and nursing babies you have perfected praise?’”', 'Matthew 21:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['babies', '“yes', 'what', 'saying', 'jesus', 'these', 'hear', 'never', '‘out', 'praise']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 17, 'He left them, and went out of the city to Bethany, and camped there.', 'Matthew 21:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'went', 'left', 'camped', 'there', 'bethany', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 18, 'Now in the morning, as he returned to the city, he was hungry.', 'Matthew 21:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'morning', 'hungry', 'returned']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 19, 'Seeing a fig tree by the road, he came to it, and found nothing on it but leaves. He said to it,
“Let there be no fruit from you forever!”

Immediately the fig tree withered away.', 'Matthew 21:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'found', 'fruit', 'road', 'leaves', '“let', 'forever', 'withered', 'seeing', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 20, 'When the disciples saw it, they marveled, saying, “How did the fig tree immediately wither away?”', 'Matthew 21:20', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['tree', 'they', 'saying', 'marveled', 'immediately', 'away', 'when', 'disciples', 'wither', '“how']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 21, 'Jesus answered them,
“Most certainly I tell you, if you have faith, and don’t doubt, you will not only do what was done to the fig tree, but even if you told this mountain, ‘Be taken up and cast into the sea,’ it would be done.', 'Matthew 21:21', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['tree', 'taken', 'mountain', '“most', 'them', 'certainly', 'answered', 'will', 'even', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 22, 'All things, whatever you ask in prayer, believing, you will receive.”', 'Matthew 21:22', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['things', 'whatever', 'believing', 'will', 'receive', 'prayer']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 23, 'When he had come into the temple, the chief priests and the elders of the people came to him as he was teaching, and said, “By what authority do you do these things? Who gave you this authority?”', 'Matthew 21:23', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['things', 'gave', 'what', 'elders', 'teaching', 'authority', 'these', 'priests', 'temple', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 24, 'Jesus answered them,
“I also will ask you one question, which if you tell me, I likewise will tell you by what authority I do these things.', 'Matthew 21:24', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['things', 'what', 'tell', 'which', 'jesus', 'will', 'question', 'authority', 'these', 'likewise']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 25, 'The baptism of John, where was it from? From heaven or from men?”

They reasoned with themselves, saying, “If we say, ‘From heaven,’ he will ask us, ‘Why then did you not believe him?’', 'Matthew 21:25', 'WEB', ARRAY['Faith', 'Prayer', 'Kingdom']::TEXT[], ARRAY['they', 'themselves', 'believe', 'john', 'saying', 'will', '‘from', '‘why', 'where', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 26, 'But if we say, ‘From men,’ we fear the multitude, for all hold John as a prophet.”', 'Matthew 21:26', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['john', 'multitude', 'fear', 'hold', 'prophet', '‘from']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 27, 'They answered Jesus, and said, “We don’t know.”
He also said to them,
“Neither will I tell you by what authority I do these things.', 'Matthew 21:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'what', 'tell', 'jesus', '“neither', 'will', 'authority', 'know', 'these']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 28, 'But what do you think? A man had two sons, and he came to the first, and said, ‘Son, go work today in my vineyard.’', 'Matthew 21:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'vineyard', 'think', 'what', '‘son', 'work', 'said', 'today', 'sons', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 29, 'He answered, ‘I will not,’ but afterward he changed his mind, and went.', 'Matthew 21:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'will', 'mind', 'changed', 'afterward', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 30, 'He came to the second, and said the same thing. He answered, ‘I’ m going, sir,’ but he didn’t go.', 'Matthew 21:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['thing', 'going', 'didn’t', 'same', 'said', 'second', 'came', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 31, 'Which of the two did the will of his father?”
They said to him, “The first.”
Jesus said to them,
“Most certainly I tell you that the tax collectors and the prostitutes are entering into God’s Kingdom before you.', 'Matthew 21:31', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', '“most', 'entering', 'them', 'certainly', 'which', 'will', 'prostitutes', 'first', 'god’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 32, 'For John came to you in the way of righteousness, and you didn’t believe him, but the tax collectors and the prostitutes believed him. When you saw it, you didn’t even repent afterward, that you might believe him.', 'Matthew 21:32', 'WEB', ARRAY['Faith', 'Righteousness']::TEXT[], ARRAY['righteousness', 'might', 'john', 'prostitutes', 'even', 'didn’t', 'repent', 'believed', 'when', 'afterward']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 33, '“Hear another parable. There was a man who was a master of a household, who planted a vineyard, set a hedge about it, dug a wine press in it, built a tower, leased it out to farmers, and went into another country.', 'Matthew 21:33', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['vineyard', 'built', 'leased', 'parable', 'another', 'went', 'hedge', 'country', 'there', 'press']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 34, 'When the season for the fruit came near, he sent his servants to the farmers, to receive his fruit.', 'Matthew 21:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'season', 'fruit', 'farmers', 'receive', 'when', 'near', 'sent', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 35, 'The farmers took his servants, beat one, killed another, and stoned another.', 'Matthew 21:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'another', 'took', 'beat', 'stoned', 'farmers', 'killed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 36, 'Again, he sent other servants more than the first: and they treated them the same way.', 'Matthew 21:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['first:', 'servants', 'than', 'they', 'treated', 'other', 'same', 'sent', 'them', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 37, 'But afterward he sent to them his son, saying, ‘They will respect my son.’', 'Matthew 21:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'will', '‘they', 'respect', 'afterward', 'sent', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 38, 'But the farmers, when they saw the son, said among themselves, ‘This is the heir. Come, let’s kill him, and seize his inheritance.’', 'Matthew 21:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['seize', 'they', 'kill', 'heir', '‘this', 'let’s', 'among', 'said', 'farmers', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 39, 'So they took him, and threw him out of the vineyard, and killed him.', 'Matthew 21:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['vineyard', 'threw', 'they', 'took', 'killed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 40, 'When therefore the lord of the vineyard comes, what will he do to those farmers?”', 'Matthew 21:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['vineyard', 'therefore', 'what', 'comes', 'will', 'those', 'farmers', 'when', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 41, 'They told him, “He will miserably destroy those miserable men, and will lease out the vineyard to other farmers, who will give him the fruit in its season.”', 'Matthew 21:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['vineyard', 'they', 'season', 'fruit', 'will', 'lease', 'give', 'those', 'other', 'farmers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 42, 'Jesus said to them,
“Did you never read in the Scriptures,

‘The stone which the builders rejected,
the same was made the head of the corner.
This was from the Lord.
It is marvelous in our eyes?’', 'Matthew 21:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['scriptures', 'them', 'made', 'eyes', 'read', 'which', 'builders', 'stone', 'this', '“did']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 43, '“Therefore I tell you, God’s Kingdom will be taken away from you, and will be given to a nation producing its fruit.', 'Matthew 21:43', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['taken', 'nation', '“therefore', 'tell', 'producing', 'given', 'will', 'god’s', 'fruit', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 44, 'He who falls on this stone will be broken to pieces, but on whomever it will fall, it will scatter him as dust.”', 'Matthew 21:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['broken', 'falls', 'scatter', 'dust', 'fall', 'will', 'stone', 'this', 'whomever', 'pieces']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 45, 'When the chief priests and the Pharisees heard his parables, they perceived that he spoke about them.', 'Matthew 21:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'priests', 'spoke', 'that', 'heard', 'when', 'parables', 'perceived', 'them', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_21}', 46, 'When they sought to seize him, they feared the multitudes, because they considered him to be a prophet.', 'Matthew 21:46', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['considered', 'seize', 'they', 'feared', 'because', 'multitudes', 'when', 'prophet', 'sought']::TEXT[], NOW());

-- Matthew Chapter 22 (46 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 1, 'Jesus answered and spoke to them again in parables, saying,', 'Matthew 22:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'jesus', 'spoke', 'parables', 'them', 'again', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 2, '“The Kingdom of Heaven is like a certain king, who made a marriage feast for his son,', 'Matthew 22:2', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['made', 'king', 'feast', 'kingdom', 'certain', 'like', '“the', 'heaven', 'marriage']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 3, 'and sent out his servants to call those who were invited to the marriage feast, but they would not come.', 'Matthew 22:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'invited', 'marriage', 'they', 'call', 'would', 'feast', 'those', 'come', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 4, 'Again he sent out other servants, saying, ‘Tell those who are invited, “Behold, I have prepared my dinner. My cattle and my fatlings are killed, and all things are ready. Come to the marriage feast!”’', 'Matthew 22:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'those', 'things', 'fatlings', 'ready', '“behold', 'servants', 'have', 'come', 'killed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 5, 'But they made light of it, and went their ways, one to his own farm, another to his merchandise,', 'Matthew 22:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'they', 'farm', 'went', 'another', 'light', 'ways', 'made', 'merchandise']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 6, 'and the rest grabbed his servants, and treated them shamefully, and killed them.', 'Matthew 22:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'rest', 'grabbed', 'treated', 'shamefully', 'them', 'killed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 7, 'When the king heard that, he was angry, and sent his armies, destroyed those murderers, and burned their city.', 'Matthew 22:7', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['city', 'their', 'murderers', 'armies', 'destroyed', 'king', 'those', 'burned', 'heard', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 8, '“Then he said to his servants, ‘The wedding is ready, but those who were invited weren’t worthy.', 'Matthew 22:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'invited', '‘the', 'worthy', 'ready', 'weren’t', 'those', 'said', 'wedding', '“then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 9, 'Go therefore to the intersections of the highways, and as many as you may find, invite to the marriage feast.’', 'Matthew 22:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'find', 'intersections', 'feast', 'many', 'highways', 'invite', 'marriage']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 10, 'Those servants went out into the highways, and gathered together as many as they found, both bad and good. The wedding was filled with guests.', 'Matthew 22:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'servants', 'found', 'they', 'went', 'filled', 'good', 'both', 'those', 'many']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 11, 'But when the king came in to see the guests, he saw there a man who didn’t have on wedding clothing,', 'Matthew 22:11', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['king', 'didn’t', 'there', 'have', 'wedding', 'when', 'clothing', 'guests', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 12, 'and he said to him, ‘Friend, how did you come in here not wearing wedding clothing?’ He was speechless.', 'Matthew 22:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['wearing', '‘friend', 'said', 'come', 'wedding', 'clothing', 'speechless', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 13, 'Then the king said to the servants, ‘Bind him hand and foot, take him away, and throw him into the outer darkness. That is where the weeping and grinding of teeth will be.’', 'Matthew 22:13', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['servants', 'darkness', 'weeping', 'grinding', 'take', 'will', 'king', 'outer', 'throw', 'foot']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 14, 'For many are called, but few chosen.”', 'Matthew 22:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['many', 'chosen', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 15, 'Then the Pharisees went and took counsel how they might entrap him in his talk.', 'Matthew 22:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'they', 'went', 'took', 'counsel', 'talk', 'entrap', 'then', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 16, 'They sent their disciples to him, along with the Herodians, saying, “Teacher, we know that you are honest, and teach the way of God in truth, no matter whom you teach, for you aren’t partial to anyone.', 'Matthew 22:16', 'WEB', ARRAY['Teaching', 'Discipleship', 'Truth']::TEXT[], ARRAY['teach', 'matter', 'their', 'they', 'anyone', 'saying', 'know', 'partial', 'honest', '“teacher']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 17, 'Tell us therefore, what do you think? Is it lawful to pay taxes to Caesar, or not?”', 'Matthew 22:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['taxes', 'think', 'lawful', 'therefore', 'what', 'tell', 'caesar']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 18, 'But Jesus perceived their wickedness, and said,
“Why do you test me, you hypocrites?', 'Matthew 22:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'hypocrites', 'jesus', 'wickedness', 'said', '“why', 'test', 'perceived']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 19, 'Show me the tax money.”
They brought to him a denarius.', 'Matthew 22:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'money', 'show', 'denarius', 'brought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 20, 'He asked them,
“Whose is this image and inscription?”', 'Matthew 22:20', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'image', '“whose', 'this', 'inscription', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 21, 'They said to him, “Caesar’s.”
Then he said to them,
“Give therefore to Caesar the things that are Caesar’s, and to God the things that are God’s.”', 'Matthew 22:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'caesar’s', 'they', 'therefore', '“caesar’s', 'caesar', 'god’s', 'said', '“give', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 22, 'When they heard it, they marveled, and left him, and went away.', 'Matthew 22:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'went', 'marveled', 'left', 'away', 'heard', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 23, 'On that day Sadducees (those who say that there is no resurrection) came to him. They asked him,', 'Matthew 22:23', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'they', 'resurrection)', '(those', 'there', 'that', 'sadducees', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 24, 'saying, “Teacher, Moses said, ‘If a man dies, having no children, his brother shall marry his wife, and raise up offspring for his brother.’', 'Matthew 22:24', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['children', 'saying', 'shall', 'raise', 'dies', 'brother', 'wife', 'said', '“teacher', 'offspring']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 25, 'Now there were with us seven brothers. The first married and died, and having no offspring left his wife to his brother.', 'Matthew 22:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'died', 'brother', 'left', 'wife', 'there', 'brothers', 'offspring', 'having', 'seven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 26, 'In the same way, the second also, and the third, to the seventh.', 'Matthew 22:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['seventh', 'same', 'second', 'also', 'third']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 27, 'After them all, the woman died.', 'Matthew 22:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['woman', 'them', 'died', 'after']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 28, 'In the resurrection therefore, whose wife will she be of the seven? For they all had her.”', 'Matthew 22:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', 'will', 'whose', 'wife', 'resurrection', 'seven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 29, 'But Jesus answered them,
“You are mistaken, not knowing the Scriptures, nor the power of God.', 'Matthew 22:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', '“you', 'knowing', 'scriptures', 'power', 'them', 'mistaken', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 30, 'For in the resurrection they neither marry, nor are given in marriage, but are like God’s angels in heaven.', 'Matthew 22:30', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['marriage', 'they', 'given', 'god’s', 'resurrection', 'neither', 'like', 'heaven', 'marry', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 31, 'But concerning the resurrection of the dead, haven’t you read that which was spoken to you by God, saying,', 'Matthew 22:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'which', 'haven’t', 'spoken', 'dead', 'resurrection', 'that', 'concerning', 'read']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 32, '‘I am the God of Abraham, and the God of Isaac, and the God of Jacob?’
God is not the God of the dead, but of the living.”', 'Matthew 22:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['jacob', 'dead', 'living', 'abraham', 'isaac']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 33, 'When the multitudes heard it, they were astonished at his teaching.', 'Matthew 22:33', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['astonished', 'they', 'teaching', 'multitudes', 'heard', 'when', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 34, 'But the Pharisees, when they heard that he had silenced the Sadducees, gathered themselves together.', 'Matthew 22:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'they', 'silenced', 'gathered', 'heard', 'when', 'that', 'sadducees', 'themselves', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 35, 'One of them, a lawyer, asked him a question, testing him.', 'Matthew 22:35', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'testing', 'question', 'lawyer', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 36, '“Teacher, which is the greatest commandment in the law?”', 'Matthew 22:36', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['which', 'commandment', 'greatest', '“teacher']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 37, 'Jesus said to him,
“‘You shall love the Lord your God with all your heart, with all your soul, and with all your mind.’', 'Matthew 22:37', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'jesus', 'shall', '“‘you', 'soul', 'said', 'mind', 'your', 'heart', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 38, 'This is the first and great commandment.', 'Matthew 22:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'this', 'commandment', 'great']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 39, 'A second likewise is this, ‘You shall love your neighbor as yourself.’', 'Matthew 22:39', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'neighbor', 'shall', 'likewise', 'yourself', 'this', 'second', 'your', '‘you']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 40, 'The whole law and the prophets depend on these two commandments.”', 'Matthew 22:40', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['depend', 'these', 'commandments', 'whole', 'prophets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 41, 'Now while the Pharisees were gathered together, Jesus asked them a question,', 'Matthew 22:41', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['together', 'asked', 'jesus', 'question', 'gathered', 'while', 'them', 'were', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 42, 'saying,
“What do you think of the Christ? Whose son is he?”

They said to him, “Of David.”', 'Matthew 22:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'think', '“what', 'saying', 'david', 'whose', 'said', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 43, 'He said to them,
“How then does David in the Spirit call him Lord, saying,', 'Matthew 22:43', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'does', 'saying', 'david', 'call', 'said', 'then', 'them', 'lord', '“how']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 44, '‘The Lord said to my Lord,
sit on my right hand,
until I make your enemies a footstool for your feet?’', 'Matthew 22:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['enemies', '‘the', 'feet', 'footstool', 'until', 'make', 'right', 'said', 'hand', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 45, '“If then David calls him Lord, how is he his son?”', 'Matthew 22:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['then', 'calls', 'david', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_22}', 46, 'No one was able to answer him a word, neither did any man dare ask him any more questions from that day forward.', 'Matthew 22:46', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['word', 'forward', 'that', 'neither', 'dare', 'answer', 'able', 'more', 'questions']::TEXT[], NOW());

-- Matthew Chapter 23 (39 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 1, 'Then Jesus spoke to the multitudes and to his disciples,', 'Matthew 23:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['jesus', 'multitudes', 'spoke', 'then', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 2, 'saying,
“The scribes and the Pharisees sat on Moses’ seat.', 'Matthew 23:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['seat', 'scribes', 'saying', 'moses’', '“the', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 3, 'All things therefore whatever they tell you to observe, observe and do, but don’t do their works; for they say, and don’t do.', 'Matthew 23:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'observe', 'they', 'therefore', 'whatever', 'their', 'tell', 'works;', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 4, 'For they bind heavy burdens that are grievous to be borne, and lay them on men’s shoulders; but they themselves will not lift a finger to help them.', 'Matthew 23:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['help', 'burdens', 'they', 'bind', 'heavy', 'grievous', 'borne', 'finger', 'will', 'men’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 5, 'But all their works they do to be seen by men. They make their phylacteries

broad, enlarge the fringes
of their garments,', 'Matthew 23:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'they', 'seen', 'fringes', 'broad', 'garments', 'make', 'enlarge', 'phylacteries', 'works']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 6, 'and love the place of honor at feasts, the best seats in the synagogues,', 'Matthew 23:6', 'WEB', ARRAY['Love']::TEXT[], ARRAY['feasts', 'love', 'synagogues', 'seats', 'best', 'place', 'honor']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 7, 'the salutations in the marketplaces, and to be called ‘Rabbi, Rabbi’ by men.', 'Matthew 23:7', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['salutations', 'rabbi’', 'marketplaces', '‘rabbi', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 8, 'But don’t you be called ‘Rabbi,’ for one is your teacher, the Christ, and all of you are brothers.', 'Matthew 23:8', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['teacher', 'your', 'brothers', 'don’t', 'christ', '‘rabbi', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 9, 'Call no man on the earth your father, for one is your Father, he who is in heaven.', 'Matthew 23:9', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['call', 'earth', 'father', 'your', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 10, 'Neither be called masters, for one is your master, the Christ.', 'Matthew 23:10', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['called', 'masters', 'neither', 'your', 'christ', 'master']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 11, 'But he who is greatest among you will be your servant.', 'Matthew 23:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'among', 'servant', 'your', 'greatest']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 12, 'Whoever exalts himself will be humbled, and whoever humbles himself will be exalted.', 'Matthew 23:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['humbles', 'will', 'himself', 'whoever', 'humbled', 'exalted', 'exalts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 13, '“Woe to you, scribes and Pharisees, hypocrites! For you devour widows’ houses, and as a pretense you make long prayers. Therefore you will receive greater condemnation.', 'Matthew 23:13', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['houses', 'therefore', 'pretense', 'scribes', 'will', 'widows’', 'make', 'prayers', 'greater', 'receive']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 14, '“But woe to you, scribes and Pharisees, hypocrites! Because you shut up the Kingdom of Heaven against men; for you don’t enter in yourselves, neither do you allow those who are entering in to enter.', 'Matthew 23:14', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['entering', 'scribes', 'because', 'men;', '“but', 'don’t', 'those', 'against', 'allow', 'enter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 15, 'Woe to you, scribes and Pharisees, hypocrites! For you travel around by sea and land to make one proselyte; and when he becomes one, you make him twice as much a son of Gehenna
as yourselves.', 'Matthew 23:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['land', 'scribes', 'proselyte;', 'becomes', 'around', 'make', 'when', 'travel', 'twice', 'hypocrites']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 16, '“Woe to you, you blind guides, who say, ‘Whoever swears by the temple, it is nothing; but whoever swears by the gold of the temple, he is obligated.’', 'Matthew 23:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['‘whoever', 'swears', 'guides', 'obligated', 'temple', 'whoever', 'gold', 'nothing;', '“woe', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 17, 'You blind fools! For which is greater, the gold, or the temple that sanctifies the gold?', 'Matthew 23:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'temple', 'fools', 'that', 'gold', 'greater', 'sanctifies', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 18, '‘Whoever swears by the altar, it is nothing; but whoever swears by the gift that is on it, he is obligated?’', 'Matthew 23:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['‘whoever', 'swears', 'altar', 'gift', 'obligated', 'whoever', 'that', 'nothing;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 19, 'You blind fools! For which is greater, the gift, or the altar that sanctifies the gift?', 'Matthew 23:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'altar', 'gift', 'fools', 'that', 'greater', 'sanctifies', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 20, 'He therefore who swears by the altar, swears by it, and by everything on it.', 'Matthew 23:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['altar', 'everything', 'therefore', 'swears']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 21, 'He who swears by the temple, swears by it, and by him who has been living
in it.', 'Matthew 23:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'swears', 'living', 'temple']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 22, 'He who swears by heaven, swears by the throne of God, and by him who sits on it.', 'Matthew 23:22', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['throne', 'heaven', 'swears', 'sits']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 23, '“Woe to you, scribes and Pharisees, hypocrites! For you tithe mint, dill, and cumin,
and have left undone the weightier matters of the law: justice, mercy, and faith. But you ought to have done these, and not to have left the other undone.', 'Matthew 23:23', 'WEB', ARRAY['Faith', 'Forgiveness', 'Grace']::TEXT[], ARRAY['undone', 'matters', 'justice', 'hypocrites', 'tithe', 'mercy', 'mint', 'law:', 'left', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 24, 'You blind guides, who strain out a gnat, and swallow a camel!', 'Matthew 23:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['guides', 'swallow', 'camel', 'strain', 'gnat', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 25, '“Woe to you, scribes and Pharisees, hypocrites! For you clean the outside of the cup and of the platter, but within they are full of extortion and unrighteousness.', 'Matthew 23:25', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['clean', 'they', 'scribes', 'extortion', 'platter', 'within', 'full', 'outside', 'hypocrites', 'unrighteousness']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 26, 'You blind Pharisee, first clean the inside of the cup and of the platter, that its outside may become clean also.', 'Matthew 23:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'clean', 'pharisee', 'platter', 'outside', 'inside', 'also', 'that', 'become', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 27, '“Woe to you, scribes and Pharisees, hypocrites! For you are like whitened tombs, which outwardly appear beautiful, but inwardly are full of dead men’s bones, and of all uncleanness.', 'Matthew 23:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['beautiful', 'scribes', 'like', 'which', 'appear', 'bones', 'men’s', 'full', 'uncleanness', 'tombs']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 28, 'Even so you also outwardly appear righteous to men, but inwardly you are full of hypocrisy and iniquity.', 'Matthew 23:28', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['appear', 'iniquity', 'even', 'full', 'righteous', 'also', 'inwardly', 'outwardly', 'hypocrisy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 29, '“Woe to you, scribes and Pharisees, hypocrites! For you build the tombs of the prophets, and decorate the tombs of the righteous,', 'Matthew 23:29', 'WEB', ARRAY['Prophecy', 'Righteousness']::TEXT[], ARRAY['decorate', 'scribes', 'tombs', 'righteous', 'prophets', 'hypocrites', 'build', '“woe', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 30, 'and say, ‘If we had lived in the days of our fathers, we wouldn’t have been partakers with them in the blood of the prophets.’', 'Matthew 23:30', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['been', 'lived', 'days', 'partakers', 'fathers', 'have', 'blood', 'wouldn’t', 'prophets', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 31, 'Therefore you testify to yourselves that you are children of those who killed the prophets.', 'Matthew 23:31', 'WEB', ARRAY['Prophecy', 'Witness']::TEXT[], ARRAY['children', 'therefore', 'those', 'testify', 'prophets', 'that', 'killed', 'yourselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 32, 'Fill up, then, the measure of your fathers.', 'Matthew 23:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['fathers', 'fill', 'your', 'then', 'measure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 33, 'You serpents, you offspring of vipers, how will you escape the judgment of Gehenna?', 'Matthew 23:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['serpents', 'will', 'vipers', 'escape', 'judgment', 'offspring', 'gehenna']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 34, 'Therefore behold, I send to you prophets, wise men, and scribes. Some of them you will kill and crucify; and some of them you will scourge in your synagogues, and persecute from city to city;', 'Matthew 23:34', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['city', 'synagogues', 'city;', 'therefore', 'send', 'scribes', 'scourge', 'will', 'them', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 35, 'that on you may come all the righteous blood shed on the earth, from the blood of righteous Abel to the blood of Zachariah son of Barachiah, whom you killed between the sanctuary and the altar.', 'Matthew 23:35', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['altar', 'zachariah', 'earth', 'blood', 'come', 'righteous', 'shed', 'barachiah', 'that', 'between']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 36, 'Most certainly I tell you, all these things will come upon this generation.', 'Matthew 23:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'things', 'tell', 'these', 'will', 'upon', 'this', 'come', 'generation', 'certainly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 37, '“Jerusalem, Jerusalem, who kills the prophets, and stones those who are sent to her! How often I would have gathered your children together, even as a hen gathers her chicks under her wings, and you would not!', 'Matthew 23:37', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['“jerusalem', 'gathers', 'those', 'your', 'children', 'kills', 'even', 'gathered', 'often', 'prophets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 38, 'Behold, your house is left to you desolate.', 'Matthew 23:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'desolate', 'left', 'your', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (1, '{CHAPTER_UUID_Matthew_23}', 39, 'For I tell you, you will not see me from now on, until you say, ‘Blessed is he who comes in the name of the Lord!’”', 'Matthew 23:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['name', 'tell', 'will', 'comes', 'until', '‘blessed', 'lord']::TEXT[], NOW());

-- Mark Chapter 14 (72 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 1, 'It was now two days before the feast of the Passover and the unleavened bread, and the chief priests and the scribes sought how they might seize him by deception, and kill him.', 'Mark 14:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['passover', 'might', 'seize', 'they', 'kill', 'scribes', 'days', 'priests', 'deception', 'feast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 2, 'For they said, “Not during the feast, because there might be a riot among the people.”', 'Mark 14:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'they', '“not', 'because', 'feast', 'there', 'said', 'among', 'riot', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 3, 'While he was at Bethany, in the house of Simon the leper, as he sat at the table, a woman came having an alabaster jar of ointment of pure nard—very costly. She broke the jar, and poured it over his head.', 'Mark 14:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'over', 'costly', 'woman', 'leper', 'nard—very', 'broke', 'table', 'while', 'ointment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 4, 'But there were some who were indignant among themselves, saying, “Why has this ointment been wasted?', 'Mark 14:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'saying', 'wasted', 'there', 'among', 'some', '“why', 'this', 'indignant', 'ointment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 5, 'For this might have been sold for more than three hundred denarii,
 and given to the poor.” They grumbled against her.', 'Mark 14:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['sold', 'might', 'denarii', 'been', 'than', 'they', 'hundred', 'given', 'poor', 'grumbled']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 6, 'But Jesus said,
“Leave her alone. Why do you trouble her? She has done a good work for me.', 'Mark 14:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['done', 'jesus', 'good', 'trouble', 'work', 'said', 'alone', '“leave']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 7, 'For you always have the poor with you, and whenever you want to, you can do them good; but you will not always have me.', 'Mark 14:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['good;', 'want', 'poor', 'will', 'have', 'always', 'whenever', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 8, 'She has done what she could. She has anointed my body beforehand for the burying.', 'Mark 14:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'done', 'could', 'beforehand', 'body', 'anointed', 'burying']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 9, 'Most certainly I tell you, wherever this Good News may be preached throughout the whole world, that which this woman has done will also be spoken of for a memorial of her.”', 'Mark 14:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'preached', 'whole', 'also', 'certainly', 'throughout', 'which', 'will', 'this', 'wherever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 10, 'Judas Iscariot, who was one of the twelve, went away to the chief priests, that he might deliver him to them.', 'Mark 14:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['iscariot', 'might', 'deliver', 'went', 'judas', 'priests', 'away', 'that', 'twelve', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 11, 'They, when they heard it, were glad, and promised to give him money. He sought how he might conveniently deliver him.', 'Mark 14:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'deliver', 'they', 'give', 'money', 'promised', 'conveniently', 'glad', 'heard', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 12, 'On the first day of unleavened bread, when they sacrificed the Passover, his disciples asked him, “Where do you want us to go and prepare that you may eat the Passover?”', 'Mark 14:12', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['first', 'passover', 'asked', 'they', 'want', '“where', 'unleavened', 'when', 'that', 'prepare']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 13, 'He sent two of his disciples, and said to them,
“Go into the city, and there you will meet a man carrying a pitcher of water. Follow him,', 'Mark 14:13', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['city', 'pitcher', 'meet', 'carrying', 'will', 'there', 'said', 'follow', 'water', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 14, 'and wherever he enters in, tell the master of the house, ‘The Teacher says, “Where is the guest room, where I may eat the Passover with my disciples?”’', 'Mark 14:14', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['house', 'passover', 'teacher', 'tell', '‘the', '“where', 'disciples', 'guest', 'room', 'enters']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 15, 'He will himself show you a large upper room furnished and ready. Get ready for us there.”', 'Mark 14:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'upper', 'himself', 'show', 'room', 'furnished', 'ready', 'large', 'there']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 16, 'His disciples went out, and came into the city, and found things as he had said to them, and they prepared the Passover.', 'Mark 14:16', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['passover', 'city', 'found', 'things', 'they', 'prepared', 'went', 'said', 'them', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 17, 'When it was evening he came with the twelve.', 'Mark 14:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['twelve', 'evening', 'came', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 18, 'As they sat and were eating, Jesus said,
“Most certainly I tell you, one of you will betray me—he who eats with me.”', 'Mark 14:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['eats', 'they', 'tell', 'jesus', 'will', '“most', 'said', 'eating', 'me—he', 'betray']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 19, 'They began to be sorrowful, and to ask him one by one, “Surely not I?” And another said, “Surely not I?”', 'Mark 14:19', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['they', 'another', 'sorrowful', 'said', 'began', '“surely']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 20, 'He answered them,
“It is one of the twelve, he who dips with me in the dish.', 'Mark 14:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['dips', 'twelve', 'them', 'dish', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 21, 'For the Son of Man goes, even as it is written about him, but woe to that man by whom the Son of Man is betrayed! It would be better for that man if he had not been born.”', 'Mark 14:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'been', 'would', 'even', 'that', 'better', 'born', 'betrayed', 'goes', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 22, 'As they were eating, Jesus took bread, and when he had blessed, he broke it, and gave to them, and said,
“Take, eat. This is my body.”', 'Mark 14:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'gave', 'jesus', 'took', 'blessed', 'said', 'this', 'body', 'eating', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 23, 'He took the cup, and when he had given thanks, he gave to them. They all drank of it.', 'Mark 14:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'they', 'given', 'took', 'thanks', 'when', 'drank', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 24, 'He said to them,
“This is my blood of the new covenant, which is poured out for many.', 'Mark 14:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['covenant', 'which', 'many', 'said', 'blood', 'poured', '“this', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 25, 'Most certainly I tell you, I will no more drink of the fruit of the vine, until that day when I drink it anew in God’s Kingdom.”', 'Mark 14:25', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['most', 'anew', 'tell', 'fruit', 'vine', 'will', 'drink', 'god’s', 'until', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 26, 'When they had sung a hymn, they went out to the Mount of Olives.', 'Mark 14:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['hymn', 'they', 'mount', 'olives', 'went', 'sung', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 27, 'Jesus said to them,
“All of you will be made to stumble because of me tonight, for it is written, ‘I will strike the shepherd, and the sheep will be scattered.’', 'Mark 14:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'because', 'sheep', 'jesus', 'will', 'shepherd', 'stumble', 'tonight', 'said', 'scattered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 28, 'However, after I am raised up, I will go before you into Galilee.”', 'Mark 14:28', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['after', 'will', 'galilee', 'however', 'raised', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 29, 'But Peter said to him, “Although all will be offended, yet I will not.”', 'Mark 14:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'offended', 'peter', '“although', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 30, 'Jesus said to him,
“Most certainly I tell you, that you today, even this night, before the rooster crows twice, you will deny me three times.”', 'Mark 14:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['times', 'tell', 'rooster', 'jesus', 'will', 'night', 'deny', 'even', '“most', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 31, 'But he spoke all the more, “If I must die with you, I will not deny you.” They all said the same thing.', 'Mark 14:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['thing', 'they', 'deny', 'will', 'spoke', 'said', 'same', 'must', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 32, 'They came to a place which was named Gethsemane. He said to his disciples,
“Sit here, while I pray.”', 'Mark 14:32', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['they', 'named', 'which', 'pray', 'place', 'said', '“sit', 'while', 'gethsemane', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 33, 'He took with him Peter, James, and John, and began to be greatly troubled and distressed.', 'Mark 14:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['john', 'distressed', 'took', 'james', 'peter', 'troubled', 'began', 'greatly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 34, 'He said to them,
“My soul is exceedingly sorrowful, even to death. Stay here, and watch.”', 'Mark 14:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['death', 'sorrowful', 'soul', 'exceedingly', 'even', 'stay', 'said', 'watch', 'them', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 35, 'He went forward a little, and fell on the ground, and prayed that, if it were possible, the hour might pass away from him.', 'Mark 14:35', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['might', 'prayed', 'ground', 'went', 'possible', 'hour', 'pass', 'fell', 'away', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 36, 'He said,
“Abba, Father, all things are possible to you. Please remove this cup from me. However, not what I desire, but what you desire.”', 'Mark 14:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'what', 'possible', '“abba', 'this', 'said', 'however', 'father', 'please', 'desire']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 37, 'He came and found them sleeping, and said to Peter,
“Simon, are you sleeping? Couldn’t you watch one hour?', 'Mark 14:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', '“simon', 'couldn’t', 'watch', 'peter', 'hour', 'said', 'sleeping', 'them', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 38, 'Watch and pray, that you may not enter into temptation. The spirit indeed is willing, but the flesh is weak.”', 'Mark 14:38', 'WEB', ARRAY['Prayer', 'Holy Spirit']::TEXT[], ARRAY['spirit', 'weak', 'pray', 'watch', 'temptation', 'flesh', 'indeed', 'enter', 'that', 'willing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 39, 'Again he went away, and prayed, saying the same words.', 'Mark 14:39', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['prayed', 'saying', 'went', 'away', 'same', 'words', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 40, 'Again he returned, and found them sleeping, for their eyes were very heavy, and they didn’t know what to answer him.', 'Mark 14:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['answer', 'found', 'their', 'heavy', 'they', 'what', 'returned', 'eyes', 'know', 'very']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 41, 'He came the third time, and said to them,
“Sleep on now, and take your rest. It is enough. The hour has come. Behold, the Son of Man is betrayed into the hands of sinners.', 'Mark 14:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'rest', 'betrayed', 'sinners', 'take', 'enough', 'hour', 'said', 'come', '“sleep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 42, 'Arise, let us be going. Behold, he who betrays me is at hand.”', 'Mark 14:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['betrays', 'arise', 'going', 'hand', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 43, 'Immediately, while he was still speaking, Judas, one of the twelve, came—and with him a multitude with swords and clubs, from the chief priests, the scribes, and the elders.', 'Mark 14:43', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['scribes', 'judas', 'multitude', 'elders', 'still', 'came—and', 'clubs', 'priests', 'immediately', 'swords']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 44, 'Now he who betrayed him had given them a sign, saying, “Whomever I will kiss, that is he. Seize him, and lead him away safely.”', 'Mark 14:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['sign', 'seize', '“whomever', 'saying', 'given', 'will', 'safely', 'away', 'lead', 'betrayed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 45, 'When he had come, immediately he came to him, and said, “Rabbi! Rabbi!” and kissed him.', 'Mark 14:45', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['“rabbi', 'said', 'immediately', 'come', 'when', 'rabbi', 'kissed', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 46, 'They laid their hands on him, and seized him.', 'Mark 14:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'they', 'seized', 'hands', 'laid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 47, 'But a certain one of those who stood by drew his sword, and struck the servant of the high priest, and cut off his ear.', 'Mark 14:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['drew', 'sword', 'priest', 'high', 'stood', 'those', 'servant', 'certain', 'struck']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 48, 'Jesus answered them,
“Have you come out, as against a robber, with swords and clubs to seize me?', 'Mark 14:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['seize', 'answered', 'jesus', 'clubs', 'robber', 'against', 'come', 'swords', 'them', '“have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 49, 'I was daily with you in the temple teaching, and you didn’t arrest me. But this is so that the Scriptures might be fulfilled.”', 'Mark 14:49', 'WEB', ARRAY['Teaching', 'Prophecy']::TEXT[], ARRAY['might', 'teaching', 'fulfilled', 'temple', 'didn’t', 'this', 'arrest', 'scriptures', 'that', 'daily']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 50, 'They all left him, and fled.', 'Mark 14:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'fled', 'left']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 51, 'A certain young man followed him, having a linen cloth thrown around himself over his naked body. The young men grabbed him,', 'Mark 14:51', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['cloth', 'over', 'followed', 'around', 'grabbed', 'linen', 'himself', 'body', 'certain', 'having']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 52, 'but he left the linen cloth, and fled from them naked.', 'Mark 14:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['cloth', 'linen', 'left', 'fled', 'naked', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 53, 'They led Jesus away to the high priest. All the chief priests, the elders, and the scribes came together with him.', 'Mark 14:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'priest', 'they', 'elders', 'scribes', 'jesus', 'high', 'priests', 'away', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 54, 'Peter had followed him from a distance, until he came into the court of the high priest. He was sitting with the officers, and warming himself in the light of the fire.', 'Mark 14:54', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'priest', 'distance', 'fire', 'officers', 'court', 'high', 'sitting', 'warming', 'until']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 55, 'Now the chief priests and the whole council sought witnesses against Jesus to put him to death, and found none.', 'Mark 14:55', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['found', 'none', 'jesus', 'priests', 'death', 'against', 'whole', 'witnesses', 'council', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 56, 'For many gave false testimony against him, and their testimony didn’t agree with each other.', 'Mark 14:56', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['gave', 'false', 'testimony', 'their', 'agree', 'each', 'many', 'didn’t', 'against', 'other']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 57, 'Some stood up, and gave false testimony against him, saying,', 'Mark 14:57', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['gave', 'false', 'testimony', 'saying', 'stood', 'against', 'some']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 58, '“We heard him say, ‘I will destroy this temple that is made with hands, and in three days I will build another made without hands.’”', 'Mark 14:58', 'WEB', ARRAY['General']::TEXT[], ARRAY['without', 'another', 'will', 'days', 'temple', 'this', 'three', 'heard', 'that', 'destroy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 59, 'Even so, their testimony did not agree.', 'Mark 14:59', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['their', 'testimony', 'agree', 'even']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 60, 'The high priest stood up in the middle, and asked Jesus, “Have you no answer? What is it which these testify against you?”', 'Mark 14:60', 'WEB', ARRAY['Prayer', 'Witness']::TEXT[], ARRAY['asked', 'priest', 'what', 'which', 'jesus', 'high', 'these', 'stood', 'against', 'testify']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 61, 'But he stayed quiet, and answered nothing. Again the high priest asked him, “Are you the Christ, the Son of the Blessed?”', 'Mark 14:61', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['priest', 'asked', 'quiet', 'stayed', 'high', '“are', 'blessed', 'nothing', 'again', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 62, 'Jesus said,
“I am. You will see the Son of Man sitting at the right hand of Power, and coming with the clouds of the sky.”', 'Mark 14:62', 'WEB', ARRAY['General']::TEXT[], ARRAY['coming', 'jesus', 'will', 'sitting', 'right', 'said', 'hand', 'power', 'clouds']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 63, 'The high priest tore his clothes, and said, “What further need have we of witnesses?', 'Mark 14:63', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['clothes', 'priest', 'tore', '“what', 'need', 'high', 'said', 'have', 'witnesses', 'further']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 64, 'You have heard the blasphemy! What do you think?” They all condemned him to be worthy of death.', 'Mark 14:64', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'think', 'what', 'worthy', 'death', 'blasphemy', 'have', 'heard', 'condemned']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 65, 'Some began to spit on him, and to cover his face, and to beat him with fists, and to tell him, “Prophesy!” The officers struck him with the palms of their hands.', 'Mark 14:65', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['their', 'cover', 'face', 'fists', 'tell', 'officers', 'beat', 'palms', 'some', 'began']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 66, 'As Peter was in the courtyard below, one of the maids of the high priest came,', 'Mark 14:66', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest', 'high', 'peter', 'maids', 'below', 'came', 'courtyard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 67, 'and seeing Peter warming himself, she looked at him, and said, “You were also with the Nazarene, Jesus!”', 'Mark 14:67', 'WEB', ARRAY['General']::TEXT[], ARRAY['looked', 'warming', 'jesus', 'himself', 'peter', '“you', 'seeing', 'said', 'also', 'nazarene']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 68, 'But he denied it, saying, “I neither know, nor understand what you are saying.” He went out on the porch, and the rooster crowed.', 'Mark 14:68', 'WEB', ARRAY['General']::TEXT[], ARRAY['porch', 'what', 'saying', 'went', 'know', 'understand', 'denied', 'neither', 'rooster', 'crowed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 69, 'The maid saw him, and began again to tell those who stood by, “This is one of them.”', 'Mark 14:69', 'WEB', ARRAY['General']::TEXT[], ARRAY['tell', 'stood', 'maid', 'those', 'began', '“this', 'them', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 70, 'But he again denied it. After a little while again those who stood by said to Peter, “You truly are one of them, for you are a Galilean, and your speech shows it.”', 'Mark 14:70', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['speech', 'after', 'galilean', 'stood', 'peter', 'those', '“you', 'said', 'denied', 'while']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 71, 'But he began to curse, and to swear, “I don’t know this man of whom you speak!”', 'Mark 14:71', 'WEB', ARRAY['General']::TEXT[], ARRAY['know', 'curse', 'this', 'began', 'speak', 'don’t', 'swear', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_14}', 72, 'The rooster crowed the second time. Peter remembered the word, how that Jesus said to him,
“Before the rooster crows twice, you will deny me three times.” When he thought about that, he wept.', 'Mark 14:72', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'deny', 'second', 'twice', 'will', 'peter', 'wept', 'three', 'remembered', 'word']::TEXT[], NOW());

-- Mark Chapter 15 (47 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 1, 'Immediately in the morning the chief priests, with the elders and scribes, and the whole council, held a consultation, and bound Jesus, and carried him away, and delivered him up to Pilate.', 'Mark 15:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['carried', 'elders', 'scribes', 'jesus', 'delivered', 'priests', 'bound', 'held', 'immediately', 'whole']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 2, 'Pilate asked him, “Are you the King of the Jews?”
He answered,
“So you say.”', 'Mark 15:2', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['asked', 'jews', '“are', 'king', 'pilate', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 3, 'The chief priests accused him of many things.', 'Mark 15:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'priests', 'many', 'accused', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 4, 'Pilate again asked him, “Have you no answer? See how many things they testify against you!”', 'Mark 15:4', 'WEB', ARRAY['Prayer', 'Witness']::TEXT[], ARRAY['things', 'asked', 'they', 'many', 'against', 'testify', 'answer', 'again', 'pilate', '“have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 5, 'But Jesus made no further answer, so that Pilate marveled.', 'Mark 15:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['answer', 'jesus', 'marveled', 'that', 'further', 'made', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 6, 'Now at the feast he used to release to them one prisoner, whom they asked of him.', 'Mark 15:6', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'they', 'prisoner', 'used', 'feast', 'release', 'them', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 7, 'There was one called Barabbas, bound with his fellow insurgents, men who in the insurrection had committed murder.', 'Mark 15:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['barabbas', 'committed', 'fellow', 'insurrection', 'insurgents', 'bound', 'there', 'murder', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 8, 'The multitude, crying aloud, began to ask him to do as he always did for them.', 'Mark 15:8', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['multitude', 'aloud', 'crying', 'began', 'always', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 9, 'Pilate answered them, saying, “Do you want me to release to you the King of the Jews?”', 'Mark 15:9', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['want', 'jews', 'saying', 'king', 'release', 'them', 'pilate', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 10, 'For he perceived that for envy the chief priests had delivered him up.', 'Mark 15:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['envy', 'delivered', 'priests', 'that', 'perceived', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 11, 'But the chief priests stirred up the multitude, that he should release Barabbas to them instead.', 'Mark 15:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['barabbas', 'stirred', 'multitude', 'should', 'priests', 'instead', 'release', 'that', 'them', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 12, 'Pilate again asked them, “What then should I do to him whom you call the King of the Jews?”', 'Mark 15:12', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['asked', '“what', 'jews', 'should', 'call', 'king', 'then', 'them', 'again', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 13, 'They cried out again, “Crucify him!”', 'Mark 15:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['cried', 'they', 'again', '“crucify']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 14, 'Pilate said to them, “Why, what evil has he done?”
But they cried out exceedingly, “Crucify him!”', 'Mark 15:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'what', 'done', 'exceedingly', 'said', '“why', '“crucify', 'evil', 'cried', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 15, 'Pilate, wishing to please the multitude, released Barabbas to them, and handed over Jesus, when he had flogged him, to be crucified.', 'Mark 15:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['barabbas', 'wishing', 'over', 'multitude', 'jesus', 'flogged', 'handed', 'released', 'when', 'crucified']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 16, 'The soldiers led him away within the court, which is the Praetorium; and they called together the whole cohort.', 'Mark 15:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'they', 'which', 'within', 'cohort', 'away', 'soldiers', 'whole', 'praetorium;', 'court']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 17, 'They clothed him with purple, and weaving a crown of thorns, they put it on him.', 'Mark 15:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['clothed', 'they', 'weaving', 'thorns', 'crown', 'purple']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 18, 'They began to salute him, “Hail, King of the Jews!”', 'Mark 15:18', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'jews', 'king', '“hail', 'began', 'salute']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 19, 'They struck his head with a reed, and spat on him, and bowing their knees, did homage to him.', 'Mark 15:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['knees', 'they', 'their', 'spat', 'bowing', 'reed', 'homage', 'head', 'struck']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 20, 'When they had mocked him, they took the purple off him, and put his own garments on him. They led him out to crucify him.', 'Mark 15:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'garments', 'took', 'mocked', 'crucify', 'purple', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 21, 'They compelled one passing by, coming from the country, Simon of Cyrene, the father of Alexander and Rufus, to go with them, that he might bear his cross.', 'Mark 15:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'they', 'rufus', 'coming', 'passing', 'alexander', 'cyrene', 'compelled', 'father', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 22, 'They brought him to the place called Golgotha, which is, being interpreted, “The place of a skull.”', 'Mark 15:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'interpreted', 'which', 'golgotha', 'place', 'skull', 'being', 'brought', '“the', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 23, 'They offered him wine mixed with myrrh to drink, but he didn’t take it.', 'Mark 15:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'myrrh', 'take', 'drink', 'mixed', 'didn’t', 'offered', 'wine']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 24, 'Crucifying him, they parted his garments among them, casting lots on them, what each should take.', 'Mark 15:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['crucifying', 'they', 'casting', 'what', 'should', 'garments', 'take', 'lots', 'each', 'among']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 25, 'It was the third hour,
 and they crucified him.', 'Mark 15:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['crucified', 'they', 'hour', 'third']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 26, 'The superscription of his accusation was written over him, “THE KING OF THE JEWS.”', 'Mark 15:26', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['over', 'written', 'jews', 'superscription', 'king', 'accusation', '“the']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 27, 'With him they crucified two robbers; one on his right hand, and one on his left.', 'Mark 15:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'robbers;', 'left', 'right', 'hand', 'crucified']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 28, 'The Scripture was fulfilled, which says, “He was counted with transgressors.”', 'Mark 15:28', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['counted', 'which', 'fulfilled', 'says', 'transgressors', 'scripture']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 29, 'Those who passed by blasphemed him, wagging their heads, and saying, “Ha! You who destroy the temple, and build it in three days,', 'Mark 15:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['wagging', 'their', 'passed', 'blasphemed', 'saying', 'days', 'temple', 'those', 'heads', 'three']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 30, 'save yourself, and come down from the cross!”', 'Mark 15:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['save', 'yourself', 'come', 'down', 'cross']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 31, 'Likewise, also the chief priests mocking among themselves with the scribes said, “He saved others. He can’t save himself.', 'Mark 15:31', 'WEB', ARRAY['Salvation', 'Kingdom']::TEXT[], ARRAY['scribes', 'can’t', 'save', 'priests', 'saved', 'likewise', 'others', 'himself', 'among', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 32, 'Let the Christ, the King of Israel, now come down from the cross, that we may see and believe him.”
 Those who were crucified with him also insulted him.', 'Mark 15:32', 'WEB', ARRAY['Faith', 'Kingdom']::TEXT[], ARRAY['king', 'those', 'israel', 'come', 'cross', 'crucified', 'also', 'insulted', 'that', 'believe']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 33, 'When the sixth hour
 had come, there was darkness over the whole land until the ninth hour.', 'Mark 15:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'darkness', 'land', 'ninth', 'hour', 'until', 'there', 'sixth', 'come', 'whole']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 34, 'At the ninth hour Jesus cried with a loud voice, saying,
“Eloi, Eloi, lama sabachthani?” which is, being interpreted,
“My God, my God, why have you forsaken me?”', 'Mark 15:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['voice', '“eloi', 'saying', 'which', 'jesus', 'ninth', 'interpreted', 'hour', 'lama', 'sabachthani']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 35, 'Some of those who stood by, when they heard it, said, “Behold, he is calling Elijah.”', 'Mark 15:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['calling', 'they', 'stood', 'those', 'said', 'some', 'elijah', 'when', 'heard', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 36, 'One ran, and filling a sponge full of vinegar, put it on a reed, and gave it to him to drink, saying, “Let him be. Let’s see whether Elijah comes to take him down.”', 'Mark 15:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'filling', 'saying', 'let’s', 'comes', 'drink', '“let', 'take', 'full', 'elijah']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 37, 'Jesus cried out with a loud voice, and gave up the spirit.', 'Mark 15:37', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'voice', 'gave', 'jesus', 'cried', 'loud']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 38, 'The veil of the temple was torn in two from the top to the bottom.', 'Mark 15:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['torn', 'veil', 'bottom', 'temple']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 39, 'When the centurion, who stood by opposite him, saw that he cried out like this and breathed his last, he said, “Truly this man was the Son of God!”', 'Mark 15:39', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['“truly', 'centurion', 'like', 'stood', 'this', 'said', 'last', 'when', 'breathed', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 40, 'There were also women watching from afar, among whom were both Mary Magdalene, and Mary the mother of James the less and of Joses, and Salome;', 'Mark 15:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['magdalene', 'salome;', 'joses', 'mother', 'mary', 'afar', 'both', 'james', 'there', 'among']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 41, 'who, when he was in Galilee, followed him, and served him; and many other women who came up with him to Jerusalem.', 'Mark 15:41', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'him;', 'many', 'galilee', 'other', 'when', 'jerusalem', 'came', 'women', 'served']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 42, 'When evening had now come, because it was the Preparation Day, that is, the day before the Sabbath,', 'Mark 15:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['preparation', 'because', 'come', 'evening', 'when', 'that', 'before', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 43, 'Joseph of Arimathaea, a prominent council member who also himself was looking for God’s Kingdom, came. He boldly went in to Pilate, and asked for Jesus’ body.', 'Mark 15:43', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['asked', 'joseph', 'went', 'jesus’', 'god’s', 'member', 'himself', 'arimathaea', 'kingdom', 'body']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 44, 'Pilate marveled if he were already dead; and summoning the centurion, he asked him whether he had been dead long.', 'Mark 15:44', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'been', 'centurion', 'already', 'marveled', 'dead', 'dead;', 'whether', 'summoning', 'long']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 45, 'When he found out from the centurion, he granted the body to Joseph.', 'Mark 15:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'granted', 'joseph', 'centurion', 'body', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 46, 'He bought a linen cloth, and taking him down, wound him in the linen cloth, and laid him in a tomb which had been cut out of a rock. He rolled a stone against the door of the tomb.', 'Mark 15:46', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['cloth', 'been', 'bought', 'tomb', 'which', 'linen', 'stone', 'rock', 'against', 'rolled']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_15}', 47, 'Mary Magdalene and Mary, the mother of Joses, saw where he was laid.', 'Mark 15:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['magdalene', 'laid', 'mother', 'mary', 'where', 'joses']::TEXT[], NOW());

-- Mark Chapter 16 (20 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 1, 'When the Sabbath was past, Mary Magdalene, and Mary the mother of James, and Salome, bought spices, that they might come and anoint him.', 'Mark 16:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['magdalene', 'might', 'they', 'bought', 'anoint', 'mother', 'salome', 'mary', 'james', 'spices']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 2, 'Very early on the first day of the week, they came to the tomb when the sun had risen.', 'Mark 16:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'week', 'risen', 'they', 'early', 'very', 'when', 'tomb', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 3, 'They were saying among themselves, “Who will roll away the stone from the door of the tomb for us?”', 'Mark 16:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'saying', 'tomb', 'will', 'stone', 'among', 'away', 'roll', 'door', '“who']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 4, 'for it was very big. Looking up, they saw that the stone was rolled back.', 'Mark 16:4', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'stone', 'very', 'back', 'rolled', 'looking', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 5, 'Entering into the tomb, they saw a young man sitting on the right side, dressed in a white robe, and they were amazed.', 'Mark 16:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'white', 'were', 'sitting', 'side', 'right', 'robe', 'amazed', 'tomb', 'entering']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 6, 'He said to them, “Don’t be amazed. You seek Jesus, the Nazarene, who has been crucified. He has risen. He is not here. Behold, the place where they laid him!', 'Mark 16:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['risen', 'been', 'they', 'seek', '“don’t', 'jesus', 'place', 'said', 'nazarene', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 7, 'But go, tell his disciples and Peter, ‘He goes before you into Galilee. There you will see him, as he said to you.’”', 'Mark 16:7', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['tell', 'will', 'peter', 'galilee', 'there', 'said', 'goes', 'before', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 8, 'They went out, and fled from the tomb, for trembling and astonishment had come on them. They said nothing to anyone; for they were afraid.', 'Mark 16:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'astonishment', 'went', 'them', 'afraid', 'said', 'come', 'fled', 'nothing', 'trembling']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 9, 'Now when he had risen early on the first day of the week, he appeared first to Mary Magdalene, from whom he had cast out seven demons.', 'Mark 16:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'risen', 'week', 'magdalene', 'demons', 'early', 'mary', 'when', 'appeared', 'seven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 10, 'She went and told those who had been with him, as they mourned and wept.', 'Mark 16:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'been', 'mourned', 'went', 'those', 'told', 'wept']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 11, 'When they heard that he was alive, and had been seen by her, they disbelieved.', 'Mark 16:11', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'been', 'seen', 'disbelieved', 'heard', 'when', 'that', 'alive']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 12, 'After these things he was revealed in another form to two of them, as they walked, on their way into the country.', 'Mark 16:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'their', 'after', 'another', 'these', 'form', 'revealed', 'them', 'country']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 13, 'They went away and told it to the rest. They didn’t believe them, either.', 'Mark 16:13', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'rest', 'went', 'either', 'didn’t', 'away', 'told', 'believe', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 14, 'Afterward he was revealed to the eleven themselves as they sat at the table, and he rebuked them for their unbelief and hardness of heart, because they didn’t believe those who had seen him after he had risen.', 'Mark 16:14', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['risen', 'they', 'seen', 'unbelief', 'table', 'those', 'heart', 'them', 'hardness', 'rebuked']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 15, 'He said to them,
“Go into all the world, and preach the Good News to the whole creation.', 'Mark 16:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['preach', 'news', 'good', 'said', 'whole', 'world', 'creation', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 16, 'He who believes and is baptized will be saved; but he who disbelieves will be condemned.', 'Mark 16:16', 'WEB', ARRAY['Faith', 'Salvation']::TEXT[], ARRAY['baptized', 'will', 'disbelieves', 'believes', 'saved;', 'condemned']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 17, 'These signs will accompany those who believe: in my name they will cast out demons; they will speak with new languages;', 'Mark 16:17', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'name', 'demons;', 'accompany', 'these', 'will', 'believe:', 'those', 'signs', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 18, 'they will take up serpents; and if they drink any deadly thing, it will in no way hurt them; they will lay hands on the sick, and they will recover.”', 'Mark 16:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['thing', 'they', 'serpents;', 'recover', 'take', 'will', 'drink', 'sick', 'hurt', 'deadly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 19, 'So then the Lord, after he had spoken to them, was received up into heaven, and sat down at the right hand of God.', 'Mark 16:19', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['heaven', 'after', 'down', 'spoken', 'right', 'received', 'hand', 'then', 'them', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (2, '{CHAPTER_UUID_Mark_16}', 20, 'They went out, and preached everywhere, the Lord working with them, and confirming the word by the signs that followed. Amen.', 'Mark 16:20', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['working', 'followed', 'they', 'went', 'everywhere', 'word', 'preached', 'confirming', 'amen', 'signs']::TEXT[], NOW());

-- Luke Chapter 1 (80 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 1, 'Since many have undertaken to set in order a narrative concerning those matters which have been fulfilled among us,', 'Luke 1:1', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['matters', 'undertaken', 'been', 'which', 'narrative', 'fulfilled', 'since', 'many', 'have', 'those']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 2, 'even as those who from the beginning were eyewitnesses and servants of the word delivered them to us,', 'Luke 1:2', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['servants', 'beginning', 'delivered', 'word', 'even', 'those', 'eyewitnesses', 'them', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 3, 'it seemed good to me also, having traced the course of all things accurately from the first, to write to you in order, most excellent Theophilus;', 'Luke 1:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'things', 'most', 'theophilus;', 'course', 'accurately', 'good', 'excellent', 'also', 'write']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 4, 'that you might know the certainty concerning the things in which you were instructed.', 'Luke 1:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['certainty', 'might', 'things', 'which', 'know', 'instructed', 'that', 'concerning', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 5, 'There was in the days of Herod, the king of Judea, a certain priest named Zacharias, of the priestly division of Abijah. He had a wife of the daughters of Aaron, and her name was Elizabeth.', 'Luke 1:5', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['priest', 'herod', 'division', 'named', 'name', 'priestly', 'days', 'zacharias', 'king', 'judea']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 6, 'They were both righteous before God, walking blamelessly in all the commandments and ordinances of the Lord.', 'Luke 1:6', 'WEB', ARRAY['Kingdom', 'Righteousness']::TEXT[], ARRAY['they', 'walking', 'ordinances', 'both', 'blamelessly', 'commandments', 'righteous', 'before', 'lord', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 7, 'But they had no child, because Elizabeth was barren, and they both were well advanced in years.', 'Luke 1:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['years', 'they', 'well', 'because', 'advanced', 'child', 'both', 'elizabeth', 'barren', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 8, 'Now while he executed the priest’s office before God in the order of his division,', 'Luke 1:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest’s', 'division', 'office', 'executed', 'while', 'order', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 9, 'according to the custom of the priest’s office, his lot was to enter into the temple of the Lord and burn incense.', 'Luke 1:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest’s', 'office', 'lord', 'temple', 'custom', 'enter', 'incense', 'burn', 'according']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 10, 'The whole multitude of the people were praying outside at the hour of incense.', 'Luke 1:10', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['praying', 'multitude', 'hour', 'whole', 'incense', 'people', 'were', 'outside']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 11, 'An angel of the Lord appeared to him, standing on the right side of the altar of incense.', 'Luke 1:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['standing', 'altar', 'side', 'angel', 'right', 'incense', 'appeared', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 12, 'Zacharias was troubled when he saw him, and fear fell upon him.', 'Luke 1:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['upon', 'zacharias', 'troubled', 'fear', 'fell', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 13, 'But the angel said to him, “Don’t be afraid, Zacharias, because your request has been heard, and your wife, Elizabeth, will bear you a son, and you shall call his name John.', 'Luke 1:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'name', 'because', 'request', '“don’t', 'will', 'shall', 'zacharias', 'call', 'angel']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 14, 'You will have joy and gladness; and many will rejoice at his birth.', 'Luke 1:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['rejoice', 'gladness;', 'will', 'many', 'have', 'birth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 15, 'For he will be great in the sight of the Lord, and he will drink no wine nor strong drink. He will be filled with the Holy Spirit, even from his mother’s womb.', 'Luke 1:15', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'strong', 'sight', 'will', 'drink', 'wine', 'filled', 'even', 'holy', 'mother’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 16, 'He will turn many of the children of Israel to the Lord, their God.', 'Luke 1:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'their', 'will', 'many', 'israel', 'lord', 'turn']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 17, 'He will go before him in the spirit and power of Elijah, ‘to turn the hearts of the fathers to the children,’ and the disobedient to the wisdom of the just; to prepare a people prepared for the Lord.”', 'Luke 1:17', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'children', 'wisdom', 'disobedient', 'prepared', 'prepare', 'hearts', 'will', 'lord', 'fathers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 18, 'Zacharias said to the angel, “How can I be sure of this? For I am an old man, and my wife is well advanced in years.”', 'Luke 1:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['years', 'well', 'zacharias', 'angel', 'wife', 'advanced', 'this', 'said', 'sure', '“how']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 19, 'The angel answered him, “I am Gabriel, who stands in the presence of God. I was sent to speak to you, and to bring you this good news.', 'Luke 1:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['presence', 'news', 'good', 'angel', 'stands', 'this', 'gabriel', 'speak', 'sent', 'bring']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 20, 'Behold, you will be silent and not able to speak, until the day that these things will happen, because you didn’t believe my words, which will be fulfilled in their proper time.”', 'Luke 1:20', 'WEB', ARRAY['Faith', 'Prophecy']::TEXT[], ARRAY['time', 'until', 'speak', 'things', 'which', 'will', 'behold', 'proper', 'didn’t', 'happen']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 21, 'The people were waiting for Zacharias, and they marveled that he delayed in the temple.', 'Luke 1:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'zacharias', 'marveled', 'temple', 'delayed', 'that', 'waiting', 'people', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 22, 'When he came out, he could not speak to them, and they perceived that he had seen a vision in the temple. He continued making signs to them, and remained mute.', 'Luke 1:22', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'vision', 'seen', 'continued', 'could', 'temple', 'remained', 'mute', 'making', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 23, 'When the days of his service were fulfilled, he departed to his house.', 'Luke 1:23', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['house', 'fulfilled', 'days', 'service', 'when', 'were', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 24, 'After these days Elizabeth, his wife, conceived, and she hid herself five months, saying,', 'Luke 1:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['five', 'after', 'saying', 'these', 'days', 'months', 'wife', 'herself', 'elizabeth', 'conceived']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 25, '“Thus has the Lord done to me in the days in which he looked at me, to take away my reproach among men.”', 'Luke 1:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['looked', '“thus', 'done', 'which', 'take', 'days', 'among', 'away', 'reproach', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 26, 'Now in the sixth month, the angel Gabriel was sent from God to a city of Galilee, named Nazareth,', 'Luke 1:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'named', 'month', 'angel', 'galilee', 'sixth', 'gabriel', 'nazareth', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 27, 'to a virgin pledged to be married to a man whose name was Joseph, of David’s house. The virgin’s name was Mary.', 'Luke 1:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'david’s', 'name', 'virgin', 'joseph', 'whose', 'virgin’s', 'mary', 'pledged', 'married']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 28, 'Having come in, the angel said to her, “Rejoice, you highly favored one! The Lord is with you. Blessed are you among women!”', 'Luke 1:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['highly', '“rejoice', 'angel', 'favored', 'blessed', 'said', 'come', 'among', 'having', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 29, 'But when she saw him, she was greatly troubled at the saying, and considered what kind of salutation this might be.', 'Luke 1:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['considered', 'salutation', 'might', 'what', 'saying', 'troubled', 'kind', 'this', 'when', 'greatly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 30, 'The angel said to her, “Don’t be afraid, Mary, for you have found favor with God.', 'Luke 1:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', '“don’t', 'mary', 'angel', 'afraid', 'said', 'have', 'favor']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 31, 'Behold, you will conceive in your womb, and give birth to a son, and will call his name ‘Jesus.’', 'Luke 1:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['name', 'call', 'will', 'give', 'behold', 'womb', 'your', '‘jesus', 'conceive', 'birth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 32, 'He will be great, and will be called the Son of the Most High. The Lord God will give him the throne of his father, David,', 'Luke 1:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'throne', 'david', 'will', 'high', 'give', 'father', 'great', 'lord', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 33, 'and he will reign over the house of Jacob forever. There will be no end to his Kingdom.”', 'Luke 1:33', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['over', 'house', 'will', 'jacob', 'forever', 'kingdom', 'there', 'reign']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 34, 'Mary said to the angel, “How can this be, seeing I am a virgin?”', 'Luke 1:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['virgin', 'mary', 'angel', 'this', 'said', 'seeing', '“how']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 35, 'The angel answered her, “The Holy Spirit will come on you, and the power of the Most High will overshadow you. Therefore also the holy one who is born from you will be called the Son of God.', 'Luke 1:35', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['most', 'spirit', 'therefore', 'called', 'will', 'high', 'angel', 'overshadow', 'power', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 36, 'Behold, Elizabeth, your relative, also has conceived a son in her old age; and this is the sixth month with her who was called barren.', 'Luke 1:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['month', 'behold', 'this', 'sixth', 'also', 'your', 'elizabeth', 'relative', 'age;', 'barren']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 37, 'For nothing spoken by God is impossible.”', 'Luke 1:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['impossible', 'spoken', 'nothing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 38, 'Mary said, “Behold, the servant of the Lord; let it be done to me according to your word.”
The angel departed from her.', 'Luke 1:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['lord;', 'done', 'mary', 'word', 'angel', 'departed', 'said', 'servant', 'your', 'according']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 39, 'Mary arose in those days and went into the hill country with haste, into a city of Judah,', 'Luke 1:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'went', 'days', 'mary', 'arose', 'judah', 'those', 'hill', 'haste', 'country']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 40, 'and entered into the house of Zacharias and greeted Elizabeth.', 'Luke 1:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'greeted', 'entered', 'zacharias', 'elizabeth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 41, 'When Elizabeth heard Mary’s greeting, the baby leaped in her womb, and Elizabeth was filled with the Holy Spirit.', 'Luke 1:41', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'baby', 'filled', 'holy', 'mary’s', 'womb', 'heard', 'when', 'elizabeth', 'leaped']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 42, 'She called out with a loud voice, and said, “Blessed are you among women, and blessed is the fruit of your womb!', 'Luke 1:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['voice', 'fruit', 'among', 'said', 'blessed', 'womb', '“blessed', 'your', 'loud', 'women']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 43, 'Why am I so favored, that the mother of my Lord should come to me?', 'Luke 1:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['mother', 'should', 'favored', 'come', 'that', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 44, 'For behold, when the voice of your greeting came into my ears, the baby leaped in my womb for joy!', 'Luke 1:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['voice', 'baby', 'ears', 'womb', 'your', 'when', 'behold', 'leaped', 'came', 'greeting']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 45, 'Blessed is she who believed, for there will be a fulfillment of the things which have been spoken to her from the Lord!”', 'Luke 1:45', 'WEB', ARRAY['Faith', 'Prophecy']::TEXT[], ARRAY['things', 'been', 'which', 'will', 'spoken', 'blessed', 'there', 'believed', 'have', 'fulfillment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 46, 'Mary said,
“My soul magnifies the Lord.', 'Luke 1:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['soul', 'mary', 'said', 'lord', 'magnifies']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 47, 'My spirit has rejoiced in God my Savior,', 'Luke 1:47', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'rejoiced', 'savior']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 48, 'for he has looked at the humble state of his servant.
For behold, from now on, all generations will call me blessed.', 'Luke 1:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['looked', 'generations', 'call', 'will', 'blessed', 'servant', 'behold', 'state', 'humble']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 49, 'For he who is mighty has done great things for me.
Holy is his name.', 'Luke 1:49', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['things', 'name', 'great', 'done', 'holy', 'mighty']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 50, 'His mercy is for generations of generations on those who fear him.', 'Luke 1:50', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['those', 'generations', 'fear', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 51, 'He has shown strength with his arm.
He has scattered the proud in the imagination of their hearts.', 'Luke 1:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['strength', 'their', 'hearts', 'shown', 'scattered', 'imagination', 'proud']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 52, 'He has put down princes from their thrones.
And has exalted the lowly.', 'Luke 1:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['princes', 'lowly', 'their', 'thrones', 'exalted', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 53, 'He has filled the hungry with good things.
He has sent the rich away empty.', 'Luke 1:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'hungry', 'filled', 'good', 'away', 'rich', 'empty', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 54, 'He has given help to Israel, his servant, that he might remember mercy,', 'Luke 1:54', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['help', 'might', 'remember', 'given', 'israel', 'servant', 'that', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 55, 'As he spoke to our fathers,
to Abraham and his offspring forever.”', 'Luke 1:55', 'WEB', ARRAY['General']::TEXT[], ARRAY['forever', 'spoke', 'fathers', 'offspring', 'abraham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 56, 'Mary stayed with her about three months, and then returned to her house.', 'Luke 1:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'returned', 'stayed', 'months', 'mary', 'three', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 57, 'Now the time that Elizabeth should give birth was fulfilled, and she gave birth to a son.', 'Luke 1:57', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['time', 'gave', 'should', 'give', 'fulfilled', 'birth', 'elizabeth', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 58, 'Her neighbors and her relatives heard that the Lord had magnified his mercy towards her, and they rejoiced with her.', 'Luke 1:58', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['relatives', 'they', 'mercy', 'neighbors', 'towards', 'rejoiced', 'heard', 'that', 'lord', 'magnified']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 59, 'On the eighth day, they came to circumcise the child; and they would have called him Zacharias, after the name of his father.', 'Luke 1:59', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'child;', 'after', 'name', 'would', 'zacharias', 'circumcise', 'have', 'eighth', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 60, 'His mother answered, “Not so; but he will be called John.”', 'Luke 1:60', 'WEB', ARRAY['General']::TEXT[], ARRAY['“not', 'answered', 'mother', 'john', 'will', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 61, 'They said to her, “There is no one among your relatives who is called by this name.”', 'Luke 1:61', 'WEB', ARRAY['General']::TEXT[], ARRAY['“there', 'relatives', 'they', 'name', 'among', 'said', 'this', 'your', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 62, 'They made signs to his father, what he would have him called.', 'Luke 1:62', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'what', 'would', 'have', 'father', 'signs', 'made', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 63, 'He asked for a writing tablet, and wrote, “His name is John.”
They all marveled.', 'Luke 1:63', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'they', 'name', 'john', '“his', 'marveled', 'tablet', 'wrote', 'writing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 64, 'His mouth was opened immediately, and his tongue freed, and he spoke, blessing God.', 'Luke 1:64', 'WEB', ARRAY['General']::TEXT[], ARRAY['tongue', 'spoke', 'opened', 'immediately', 'blessing', 'freed', 'mouth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 65, 'Fear came on all who lived around them, and all these sayings were talked about throughout all the hill country of Judea.', 'Luke 1:65', 'WEB', ARRAY['General']::TEXT[], ARRAY['talked', 'throughout', 'lived', 'around', 'these', 'sayings', 'country', 'judea', 'fear', 'hill']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 66, 'All who heard them laid them up in their heart, saying, “What then will this child be?” The hand of the Lord was with him.', 'Luke 1:66', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', '“what', 'saying', 'will', 'child', 'this', 'hand', 'heart', 'heard', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 67, 'His father, Zacharias, was filled with the Holy Spirit, and prophesied, saying,', 'Luke 1:67', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'saying', 'prophesied', 'filled', 'zacharias', 'father', 'holy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 68, '“Blessed be the Lord, the God of Israel,
for he has visited and redeemed his people;', 'Luke 1:68', 'WEB', ARRAY['General']::TEXT[], ARRAY['visited', 'redeemed', 'israel', '“blessed', 'people;', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 69, 'and has raised up a horn of salvation for us in the house of his servant David', 'Luke 1:69', 'WEB', ARRAY['Salvation', 'Miracle']::TEXT[], ARRAY['house', 'david', 'salvation', 'servant', 'horn', 'raised']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 70, '(as he spoke by the mouth of his holy prophets who have been from of old),', 'Luke 1:70', 'WEB', ARRAY['Prophecy', 'Righteousness']::TEXT[], ARRAY['been', 'old)', 'spoke', 'have', 'prophets', 'holy', 'mouth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 71, 'salvation from our enemies, and from the hand of all who hate us;', 'Luke 1:71', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['enemies', 'hand', 'hate', 'salvation']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 72, 'to show mercy towards our fathers,
to remember his holy covenant,', 'Luke 1:72', 'WEB', ARRAY['Forgiveness', 'Righteousness', 'Grace']::TEXT[], ARRAY['remember', 'covenant', 'towards', 'show', 'fathers', 'holy', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 73, 'the oath which he swore to Abraham, our father,', 'Luke 1:73', 'WEB', ARRAY['General']::TEXT[], ARRAY['oath', 'which', 'swore', 'father', 'abraham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 74, 'to grant to us that we, being delivered out of the hand of our enemies,
should serve him without fear,', 'Luke 1:74', 'WEB', ARRAY['General']::TEXT[], ARRAY['without', 'enemies', 'should', 'delivered', 'fear', 'being', 'grant', 'hand', 'that', 'serve']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 75, 'In holiness and righteousness before him all the days of our life.', 'Luke 1:75', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['righteousness', 'life', 'days', 'holiness', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 76, 'And you, child, will be called a prophet of the Most High,
for you will go before the face of the Lord to prepare his ways,', 'Luke 1:76', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['most', 'face', 'prepare', 'will', 'high', 'child', 'ways', 'before', 'prophet', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 77, 'to give knowledge of salvation to his people by the remission of their sins,', 'Luke 1:77', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['their', 'knowledge', 'give', 'salvation', 'sins', 'remission', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 78, 'because of the tender mercy of our God,
whereby the dawn from on high will visit us,', 'Luke 1:78', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['tender', 'because', 'high', 'will', 'whereby', 'dawn', 'visit', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 79, 'to shine on those who sit in darkness and the shadow of death;
to guide our feet into the way of peace.”', 'Luke 1:79', 'WEB', ARRAY['General']::TEXT[], ARRAY['darkness', 'feet', 'shadow', 'those', 'death;', 'peace', 'guide', 'shine']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_1}', 80, 'The child was growing, and becoming strong in spirit, and was in the desert until the day of his public appearance to Israel.', 'Luke 1:80', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['public', 'spirit', 'appearance', 'strong', 'desert', 'until', 'child', 'israel', 'growing', 'becoming']::TEXT[], NOW());

-- Luke Chapter 2 (52 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 1, 'Now in those days, a decree went out from Caesar Augustus that all the world should be enrolled.', 'Luke 2:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['augustus', 'went', 'should', 'enrolled', 'caesar', 'days', 'those', 'decree', 'world', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 2, 'This was the first enrollment made when Quirinius was governor of Syria.', 'Luke 2:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'governor', 'enrollment', 'this', 'quirinius', 'syria', 'when', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 3, 'All went to enroll themselves, everyone to his own city.', 'Luke 2:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'went', 'everyone', 'enroll', 'themselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 4, 'Joseph also went up from Galilee, out of the city of Nazareth, into Judea, to David’s city, which is called Bethlehem, because he was of the house and family of David;', 'Luke 2:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'city', 'david’s', 'joseph', 'went', 'which', 'bethlehem', 'because', 'judea', 'galilee']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 5, 'to enroll himself with Mary, who was pledged to be married to him as wife, being pregnant.', 'Luke 2:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['pregnant', 'himself', 'mary', 'wife', 'being', 'enroll', 'pledged', 'married']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 6, 'While they were there, the day had come for her to give birth.', 'Luke 2:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'give', 'there', 'come', 'while', 'birth', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 7, 'She gave birth to her firstborn son. She wrapped him in bands of cloth, and laid him in a feeding trough, because there was no room for them in the inn.', 'Luke 2:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['cloth', 'wrapped', 'gave', 'because', 'trough', 'feeding', 'bands', 'room', 'there', 'birth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 8, 'There were shepherds in the same country staying in the field, and keeping watch by night over their flock.', 'Luke 2:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'staying', 'their', 'flock', 'keeping', 'night', 'field', 'watch', 'there', 'same']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 9, 'Behold, an angel of the Lord stood by them, and the glory of the Lord shone around them, and they were terrified.', 'Luke 2:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'terrified', 'shone', 'around', 'stood', 'angel', 'behold', 'glory', 'them', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 10, 'The angel said to them, “Don’t be afraid, for behold, I bring you good news of great joy which will be to all the people.', 'Luke 2:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['great', 'news', '“don’t', 'which', 'will', 'good', 'angel', 'afraid', 'said', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 11, 'For there is born to you today, in David’s city, a Savior, who is Christ the Lord.', 'Luke 2:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['david’s', 'city', 'savior', 'there', 'today', 'born', 'lord', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 12, 'This is the sign to you: you will find a baby wrapped in strips of cloth, lying in a feeding trough.”', 'Luke 2:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['you:', 'sign', 'wrapped', 'cloth', 'find', 'trough', 'baby', 'will', 'feeding', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 13, 'Suddenly, there was with the angel a multitude of the heavenly army praising God, and saying,', 'Luke 2:13', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['suddenly', 'multitude', 'saying', 'angel', 'praising', 'there', 'heavenly', 'army']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 14, '“Glory to God in the highest,
on earth peace, good will toward men.”', 'Luke 2:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['“glory', 'highest', 'will', 'good', 'toward', 'peace', 'earth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 15, 'When the angels went away from them into the sky, the shepherds said to one another, “Let’s go to Bethlehem, now, and see this thing that has happened, which the Lord has made known to us.”', 'Luke 2:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['thing', 'made', 'went', 'another', 'bethlehem', 'which', 'lord', 'known', 'this', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 16, 'They came with haste, and found both Mary and Joseph, and the baby was lying in the feeding trough.', 'Luke 2:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'they', 'joseph', 'trough', 'baby', 'feeding', 'mary', 'both', 'haste', 'lying']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 17, 'When they saw it, they publicized widely the saying which was spoken to them about this child.', 'Luke 2:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'widely', 'saying', 'which', 'spoken', 'child', 'this', 'publicized', 'when', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 18, 'All who heard it wondered at the things which were spoken to them by the shepherds.', 'Luke 2:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'wondered', 'which', 'spoken', 'shepherds', 'heard', 'them', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 19, 'But Mary kept all these sayings, pondering them in her heart.', 'Luke 2:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['pondering', 'these', 'sayings', 'mary', 'heart', 'them', 'kept']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 20, 'The shepherds returned, glorifying and praising God for all the things that they had heard and seen, just as it was told them.', 'Luke 2:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['just', 'things', 'they', 'seen', 'returned', 'praising', 'glorifying', 'shepherds', 'told', 'heard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 21, 'When eight days were fulfilled for the circumcision of the child, his name was called Jesus, which was given by the angel before he was conceived in the womb.', 'Luke 2:21', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['name', 'which', 'jesus', 'given', 'fulfilled', 'days', 'angel', 'child', 'circumcision', 'womb']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 22, 'When the days of their purification according to the law of Moses were fulfilled, they brought him up to Jerusalem, to present him to the Lord', 'Luke 2:22', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['their', 'they', 'days', 'fulfilled', 'lord', 'present', 'brought', 'when', 'jerusalem', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 23, '(as it is written in the law of the Lord, “Every male who opens the womb shall be called holy to the Lord”),', 'Luke 2:23', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['written', 'male', 'shall', '“every', 'opens', 'womb', 'holy', 'lord”)', 'lord', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 24, 'and to offer a sacrifice according to that which is said in the law of the Lord, “A pair of turtledoves, or two young pigeons.”', 'Luke 2:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['sacrifice', 'pigeons', 'pair', 'which', 'offer', 'lord', 'said', 'that', 'turtledoves', 'according']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 25, 'Behold, there was a man in Jerusalem whose name was Simeon. This man was righteous and devout, looking for the consolation of Israel, and the Holy Spirit was on him.', 'Luke 2:25', 'WEB', ARRAY['Kingdom', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'name', 'whose', 'behold', 'holy', 'there', 'this', 'devout', 'righteous', 'simeon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 26, 'It had been revealed to him by the Holy Spirit that he should not see death before he had seen the Lord’s Christ.', 'Luke 2:26', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'been', 'seen', 'should', 'death', 'that', 'holy', 'revealed', 'before', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 27, 'He came in the Spirit into the temple. When the parents brought in the child, Jesus, that they might do concerning him according to the custom of the law,', 'Luke 2:27', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'might', 'they', 'jesus', 'temple', 'child', 'custom', 'brought', 'parents', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 28, 'then he received him into his arms, and blessed God, and said,', 'Luke 2:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['blessed', 'received', 'said', 'arms', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 29, '“Now you are releasing your servant, Master,
according to your word, in peace;', 'Luke 2:29', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['peace;', 'releasing', 'word', 'servant', 'your', '“now', 'according', 'master']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 30, 'for my eyes have seen your salvation,', 'Luke 2:30', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['seen', 'salvation', 'have', 'your', 'eyes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 31, 'which you have prepared before the face of all peoples;', 'Luke 2:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['face', 'prepared', 'peoples;', 'which', 'have', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 32, 'a light for revelation to the nations,
and the glory of your people Israel.”', 'Luke 2:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['nations', 'light', 'israel', 'revelation', 'your', 'glory', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 33, 'Joseph and his mother were marveling at the things which were spoken concerning him,', 'Luke 2:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'mother', 'joseph', 'which', 'spoken', 'marveling', 'concerning', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 34, 'and Simeon blessed them, and said to Mary, his mother, “Behold, this child is set for the falling and the rising of many in Israel, and for a sign which is spoken against.', 'Luke 2:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['sign', 'mother', 'which', 'mary', 'spoken', 'child', 'falling', 'blessed', 'said', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 35, 'Yes, a sword will pierce through your own soul, that the thoughts of many hearts may be revealed.”', 'Luke 2:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['sword', 'revealed', 'hearts', 'will', 'soul', 'pierce', 'many', 'your', 'that', 'thoughts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 36, 'There was one Anna, a prophetess, the daughter of Phanuel, of the tribe of Asher (she was of a great age, having lived with a husband seven years from her virginity,', 'Luke 2:36', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['husband', 'years', 'prophetess', 'virginity', 'lived', 'daughter', 'phanuel', 'tribe', 'there', 'seven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 37, 'and she had been a widow for about eighty-four years), who didn’t depart from the temple, worshiping with fastings and petitions night and day.', 'Luke 2:37', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['fastings', 'eighty-four', 'been', 'depart', 'petitions', 'years)', 'night', 'temple', 'widow', 'didn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 38, 'Coming up at that very hour, she gave thanks to the Lord, and spoke of him to all those who were looking for redemption in Jerusalem.', 'Luke 2:38', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['gave', 'redemption', 'coming', 'hour', 'spoke', 'very', 'those', 'looking', 'thanks', 'jerusalem']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 39, 'When they had accomplished all things that were according to the law of the Lord, they returned into Galilee, to their own city, Nazareth.', 'Luke 2:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'city', 'they', 'their', 'returned', 'lord', 'galilee', 'when', 'nazareth', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 40, 'The child was growing, and was becoming strong in spirit, being filled with wisdom, and the grace of God was upon him.', 'Luke 2:40', 'WEB', ARRAY['Holy Spirit', 'Grace']::TEXT[], ARRAY['spirit', 'wisdom', 'strong', 'upon', 'filled', 'child', 'grace', 'being', 'growing', 'becoming']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 41, 'His parents went every year to Jerusalem at the feast of the Passover.', 'Luke 2:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['passover', 'went', 'feast', 'every', 'parents', 'year', 'jerusalem']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 42, 'When he was twelve years old, they went up to Jerusalem according to the custom of the feast,', 'Luke 2:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['years', 'they', 'went', 'feast', 'custom', 'when', 'jerusalem', 'twelve', 'according']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 43, 'and when they had fulfilled the days, as they were returning, the boy Jesus stayed behind in Jerusalem. Joseph and his mother didn’t know it,', 'Luke 2:43', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['they', 'joseph', 'mother', 'behind', 'jesus', 'stayed', 'fulfilled', 'days', 'know', 'didn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 44, 'but supposing him to be in the company, they went a day’s journey, and they looked for him among their relatives and acquaintances.', 'Luke 2:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['day’s', 'looked', 'relatives', 'they', 'their', 'acquaintances', 'went', 'company', 'among', 'journey']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 45, 'When they didn’t find him, they returned to Jerusalem, looking for him.', 'Luke 2:45', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'find', 'returned', 'didn’t', 'looking', 'when', 'jerusalem']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 46, 'After three days they found him in the temple, sitting in the middle of the teachers, both listening to them, and asking them questions.', 'Luke 2:46', 'WEB', ARRAY['Prayer', 'Kingdom', 'Teaching']::TEXT[], ARRAY['found', 'they', 'after', 'days', 'sitting', 'teachers', 'temple', 'both', 'listening', 'asking']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 47, 'All who heard him were amazed at his understanding and his answers.', 'Luke 2:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['understanding', 'answers', 'heard', 'amazed', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 48, 'When they saw him, they were astonished, and his mother said to him, “Son, why have you treated us this way? Behold, your father and I were anxiously looking for you.”', 'Luke 2:48', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['astonished', 'they', 'mother', '“son', 'treated', 'this', 'said', 'have', 'your', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 49, 'He said to them,
“Why were you looking for me? Didn’t you know that I must be in my Father’s house?”', 'Luke 2:49', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['house', 'father’s', 'know', 'didn’t', 'said', '“why', 'looking', 'that', 'them', 'must']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 50, 'They didn’t understand the saying which he spoke to them.', 'Luke 2:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'saying', 'which', 'understand', 'didn’t', 'spoke', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 51, 'And he went down with them, and came to Nazareth. He was subject to them, and his mother kept all these sayings in her heart.', 'Luke 2:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['subject', 'mother', 'went', 'these', 'sayings', 'them', 'kept', 'heart', 'nazareth', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_2}', 52, 'And Jesus increased in wisdom and stature, and in favor with God and men.', 'Luke 2:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['increased', 'wisdom', 'jesus', 'stature', 'favor']::TEXT[], NOW());

-- Luke Chapter 3 (38 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 1, 'Now in the fifteenth year of the reign of Tiberius Caesar, Pontius Pilate being governor of Judea, and Herod being tetrarch of Galilee, and his brother Philip tetrarch of the region of Ituraea and Trachonitis, and Lysanias tetrarch of Abilene,', 'Luke 3:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['pontius', 'herod', 'ituraea', 'tetrarch', 'abilene', 'caesar', 'brother', 'judea', 'year', 'region']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 2, 'in the high priesthood of Annas and Caiaphas, the word of God came to John, the son of Zacharias, in the wilderness.', 'Luke 3:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['wilderness', 'john', 'high', 'zacharias', 'word', 'caiaphas', 'annas', 'priesthood', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 3, 'He came into all the region around the Jordan, preaching the baptism of repentance for remission of sins.', 'Luke 3:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['baptism', 'repentance', 'around', 'sins', 'remission', 'region', 'preaching', 'jordan', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 4, 'As it is written in the book of the words of Isaiah the prophet,
“The voice of one crying in the wilderness,
‘Make ready the way of the Lord.
Make his paths straight.', 'Luke 3:4', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['voice', 'written', 'isaiah', '“the', 'wilderness', '‘make', 'ready', 'make', 'book', 'crying']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 5, 'Every valley will be filled.
Every mountain and hill will be brought low.
The crooked will become straight,
and the rough ways smooth.', 'Luke 3:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['valley', 'smooth', 'will', 'filled', 'mountain', 'brought', 'every', 'hill', 'straight', 'ways']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 6, 'All flesh will see God’s salvation.’”', 'Luke 3:6', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['will', 'god’s', 'salvation', 'flesh']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 7, 'He said therefore to the multitudes who went out to be baptized by him, “You offspring of vipers, who warned you to flee from the wrath to come?', 'Luke 3:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['wrath', 'baptized', 'therefore', 'flee', 'went', 'multitudes', 'vipers', '“you', 'said', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 8, 'Therefore produce fruits worthy of repentance, and don’t begin to say among yourselves, ‘We have Abraham for our father;’ for I tell you that God is able to raise up children to Abraham from these stones!', 'Luke 3:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['raise', 'worthy', 'begin', 'fruits', 'children', 'abraham', 'therefore', 'repentance', 'father;’', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 9, 'Even now the ax also lies at the root of the trees. Every tree therefore that doesn’t produce good fruit is cut down, and thrown into the fire.”', 'Luke 3:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['root', 'tree', 'fire', 'therefore', 'down', 'fruit', 'good', 'even', 'lies', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 10, 'The multitudes asked him, “What then must we do?”', 'Luke 3:10', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', '“what', 'multitudes', 'then', 'must']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 11, 'He answered them, “He who has two coats, let him give to him who has none. He who has food, let him do likewise.”', 'Luke 3:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['coats', 'none', 'give', 'likewise', 'food', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 12, 'Tax collectors also came to be baptized, and they said to him, “Teacher, what must we do?”', 'Luke 3:12', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['they', 'baptized', 'what', 'said', 'also', '“teacher', 'must', 'came', 'collectors']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 13, 'He said to them, “Collect no more than that which is appointed to you.”', 'Luke 3:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['than', 'appointed', 'which', 'them', 'said', 'that', '“collect', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 14, 'Soldiers also asked him, saying, “What about us? What must we do?”
He said to them, “Extort from no one by violence, neither accuse anyone wrongfully. Be content with your wages.”', 'Luke 3:14', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'anyone', '“what', 'what', 'wages', 'saying', 'violence', 'accuse', 'content', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 15, 'As the people were in expectation, and all men reasoned in their hearts concerning John, whether perhaps he was the Christ,', 'Luke 3:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'expectation', 'john', 'hearts', 'concerning', 'whether', 'perhaps', 'were', 'people', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 16, 'John answered them all, “I indeed baptize you with water, but he comes who is mightier than I, the strap of whose sandals I am not worthy to loosen. He will baptize you in the Holy Spirit and fire,', 'Luke 3:16', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['mightier', 'spirit', 'fire', 'than', 'baptize', 'john', 'loosen', 'comes', 'worthy', 'will']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 17, 'whose fan is in his hand, and he will thoroughly cleanse his threshing floor, and will gather the wheat into his barn; but he will burn up the chaff with unquenchable fire.”', 'Luke 3:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['threshing', 'fire', 'chaff', 'gather', 'will', 'whose', 'cleanse', 'unquenchable', 'hand', 'floor']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 18, 'Then with many other exhortations he preached good news to the people,', 'Luke 3:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['exhortations', 'news', 'good', 'many', 'preached', 'other', 'then', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 19, 'but Herod the tetrarch, being reproved by him for Herodias, his brother’s
 wife, and for all the evil things which Herod had done,', 'Luke 3:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'herod', 'brother’s', 'reproved', 'tetrarch', 'which', 'done', 'wife', 'herodias', 'being']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 20, 'added this also to them all, that he shut up John in prison.', 'Luke 3:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['prison', 'john', 'this', 'also', 'shut', 'that', 'added', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 21, 'Now when all the people were baptized, Jesus also had been baptized, and was praying. The sky was opened,', 'Luke 3:21', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['praying', 'been', 'baptized', 'jesus', 'opened', 'also', 'when', 'people', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 22, 'and the Holy Spirit descended in a bodily form like a dove on him; and a voice came out of the sky, saying “You are my beloved Son. In you I am well pleased.”', 'Luke 3:22', 'WEB', ARRAY['Love', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'voice', 'well', 'bodily', 'beloved', 'saying', 'descended', 'him;', '“you', 'form']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 23, 'Jesus himself, when he began to teach, was about thirty years old, being the son (as was supposed) of Joseph, the son of Heli,', 'Luke 3:23', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['years', 'teach', 'joseph', 'heli', 'jesus', 'supposed)', 'himself', 'thirty', 'being', 'began']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 24, 'the son of Matthat, the son of Levi, the son of Melchi, the son of Jannai, the son of Joseph,', 'Luke 3:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['joseph', 'jannai', 'melchi', 'levi', 'matthat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 25, 'the son of Mattathias, the son of Amos, the son of Nahum, the son of Esli, the son of Naggai,', 'Luke 3:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['mattathias', 'nahum', 'esli', 'naggai', 'amos']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 26, 'the son of Maath, the son of Mattathias, the son of Semein, the son of Joseph, the son of Judah,', 'Luke 3:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['joseph', 'semein', 'mattathias', 'maath', 'judah']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 27, 'the son of Joanan, the son of Rhesa, the son of Zerubbabel, the son of Shealtiel, the son of Neri,', 'Luke 3:27', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['joanan', 'zerubbabel', 'neri', 'shealtiel', 'rhesa']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 28, 'the son of Melchi, the son of Addi, the son of Cosam, the son of Elmodam, the son of Er,', 'Luke 3:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['addi', 'cosam', 'melchi', 'elmodam']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 29, 'the son of Jose, the son of Eliezer, the son of Jorim, the son of Matthat, the son of Levi,', 'Luke 3:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['jorim', 'jose', 'eliezer', 'levi', 'matthat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 30, 'the son of Simeon, the son of Judah, the son of Joseph, the son of Jonan, the son of Eliakim,', 'Luke 3:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['joseph', 'jonan', 'eliakim', 'judah', 'simeon']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 31, 'the son of Melea, the son of Menan, the son of Mattatha, the son of Nathan, the son of David,', 'Luke 3:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['david', 'melea', 'nathan', 'menan', 'mattatha']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 32, 'the son of Jesse, the son of Obed, the son of Boaz, the son of Salmon, the son of Nahshon,', 'Luke 3:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesse', 'salmon', 'nahshon', 'boaz', 'obed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 33, 'the son of Amminadab, the son of Aram, the son of Hezron, the son of Perez, the son of Judah,', 'Luke 3:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['amminadab', 'aram', 'perez', 'judah', 'hezron']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 34, 'the son of Jacob, the son of Isaac, the son of Abraham, the son of Terah, the son of Nahor,', 'Luke 3:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['jacob', 'nahor', 'terah', 'abraham', 'isaac']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 35, 'the son of Serug, the son of Reu, the son of Peleg, the son of Eber, the son of Shelah,', 'Luke 3:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['eber', 'peleg', 'shelah', 'serug']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 36, 'the son of Cainan, the son of Arphaxad, the son of Shem, the son of Noah, the son of Lamech,', 'Luke 3:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['lamech', 'cainan', 'noah', 'shem', 'arphaxad']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 37, 'the son of Methuselah, the son of Enoch, the son of Jared, the son of Mahalaleel, the son of Cainan,', 'Luke 3:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['enoch', 'mahalaleel', 'cainan', 'jared', 'methuselah']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_3}', 38, 'the son of Enos, the son of Seth, the son of Adam, the son of God.', 'Luke 3:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['seth', 'enos', 'adam']::TEXT[], NOW());

-- Luke Chapter 4 (44 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 1, 'Jesus, full of the Holy Spirit, returned from the Jordan, and was led by the Spirit into the wilderness', 'Luke 4:1', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'wilderness', 'returned', 'jesus', 'full', 'holy', 'jordan']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 2, 'for forty days, being tempted by the devil. He ate nothing in those days. Afterward, when they were completed, he was hungry.', 'Luke 4:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['afterward', 'they', 'hungry', 'forty', 'days', 'completed', 'tempted', 'those', 'being', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 3, 'The devil said to him, “If you are the Son of God, command this stone to become bread.”', 'Luke 4:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['command', 'stone', 'this', 'said', 'bread', 'devil', 'become']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 4, 'Jesus answered him, saying,
“It is written, ‘Man shall not live by bread alone, but by every word of God.’”', 'Luke 4:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'saying', 'jesus', 'shall', 'word', 'live', 'every', 'alone', 'bread', '‘man']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 5, 'The devil, leading him up on a high mountain, showed him all the kingdoms of the world in a moment of time.', 'Luke 4:5', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['time', 'kingdoms', 'high', 'mountain', 'showed', 'world', 'leading', 'devil', 'moment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 6, 'The devil said to him, “I will give you all this authority, and their glory, for it has been delivered to me; and I give it to whomever I want.', 'Luke 4:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['whomever', 'want', 'their', 'been', 'will', 'give', 'authority', 'delivered', 'this', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 7, 'If you therefore will worship before me, it will all be yours.”', 'Luke 4:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['worship', 'therefore', 'will', 'before', 'yours']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 8, 'Jesus answered him,
“Get behind me Satan! For it is written, ‘You shall worship the Lord your God, and you shall serve him only.’”', 'Luke 4:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['“get', 'worship', 'written', 'serve', 'jesus', 'shall', 'only', 'your', 'satan', 'behind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 9, 'He led him to Jerusalem, and set him on the pinnacle of the temple, and said to him, “If you are the Son of God, cast yourself down from here,', 'Luke 4:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['pinnacle', 'temple', 'yourself', 'said', 'jerusalem', 'down', 'here', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 10, 'for it is written,
‘He will put his angels in charge of you, to guard you;’', 'Luke 4:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'will', 'you;’', 'charge', 'guard', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 11, 'and,
‘On their hands they will bear you up,
lest perhaps you dash your foot against a stone.’”', 'Luke 4:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'they', 'dash', 'lest', 'will', 'stone', 'foot', 'against', 'your', 'bear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 12, 'Jesus answering, said to him,
“It has been said, ‘You shall not tempt the Lord your God.’”', 'Luke 4:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'jesus', 'answering', 'shall', 'tempt', 'said', 'your', '‘you', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 13, 'When the devil had completed every temptation, he departed from him until another time.', 'Luke 4:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'another', 'completed', 'until', 'temptation', 'every', 'when', 'devil', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 14, 'Jesus returned in the power of the Spirit into Galilee, and news about him spread through all the surrounding area.', 'Luke 4:14', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spread', 'spirit', 'surrounding', 'returned', 'news', 'jesus', 'galilee', 'power', 'area']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 15, 'He taught in their synagogues, being glorified by all.', 'Luke 4:15', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['synagogues', 'their', 'taught', 'glorified', 'being']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 16, 'He came to Nazareth, where he had been brought up. He entered, as was his custom, into the synagogue on the Sabbath day, and stood up to read.', 'Luke 4:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'read', 'entered', 'stood', 'custom', 'brought', 'nazareth', 'synagogue', 'where', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 17, 'The book of the prophet Isaiah was handed to him. He opened the book, and found the place where it was written,', 'Luke 4:17', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['found', 'isaiah', 'written', 'place', 'book', 'opened', 'handed', 'prophet', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 18, '“The Spirit of the Lord is on me,
because he has anointed me to preach good news to the poor.
He has sent me to heal the broken hearted,
to proclaim release to the captives,
recovering of sight to the blind,
to deliver those who are crushed,', 'Luke 4:18', 'WEB', ARRAY['Miracle', 'Holy Spirit']::TEXT[], ARRAY['heal', 'sight', 'those', 'captives', 'hearted', 'spirit', 'deliver', 'broken', 'crushed', '“the']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 19, 'and to proclaim the acceptable year of the Lord.”', 'Luke 4:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['proclaim', 'acceptable', 'year', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 20, 'He closed the book, gave it back to the attendant, and sat down. The eyes of all in the synagogue were fastened on him.', 'Luke 4:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'attendant', 'eyes', 'fastened', 'closed', 'book', 'back', 'synagogue', 'down', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 21, 'He began to tell them,
“Today, this Scripture has been fulfilled in your hearing.”', 'Luke 4:21', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['been', 'tell', 'hearing', 'fulfilled', 'this', 'began', 'your', '“today', 'them', 'scripture']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 22, 'All testified about him, and wondered at the gracious words which proceeded out of his mouth, and they said, “Isn’t this Joseph’s son?”', 'Luke 4:22', 'WEB', ARRAY['Grace']::TEXT[], ARRAY['they', '“isn’t', 'wondered', 'which', 'testified', 'this', 'said', 'joseph’s', 'words', 'proceeded']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 23, 'He said to them,
“Doubtless you will tell me this parable, ‘Physician, heal yourself! Whatever we have heard done at Capernaum, do also here in your hometown.’”', 'Luke 4:23', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['heal', 'parable', 'also', 'your', 'them', '“doubtless', 'will', 'yourself', 'this', 'heard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 24, 'He said,
“Most certainly I tell you, no prophet is acceptable in his hometown.', 'Luke 4:24', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['tell', '“most', 'acceptable', 'said', 'prophet', 'certainly', 'hometown']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 25, 'But truly I tell you, there were many widows in Israel in the days of Elijah, when the sky was shut up three years and six months, when a great famine came over all the land.', 'Luke 4:25', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['widows', 'days', 'truly', 'elijah', 'shut', 'were', 'over', 'months', 'there', 'three']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 26, 'Elijah was sent to none of them, except to Zarephath, in the land of Sidon, to a woman who was a widow.', 'Luke 4:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['land', 'woman', 'except', 'none', 'sidon', 'zarephath', 'widow', 'elijah', 'sent', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 27, 'There were many lepers in Israel in the time of Elisha the prophet, yet not one of them was cleansed, except Naaman, the Syrian.”', 'Luke 4:27', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['time', 'except', 'them', 'syrian', 'elisha', 'many', 'there', 'israel', 'cleansed', 'naaman']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 28, 'They were all filled with wrath in the synagogue, as they heard these things.', 'Luke 4:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'wrath', 'they', 'these', 'filled', 'heard', 'synagogue', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 29, 'They rose up, threw him out of the city, and led him to the brow of the hill that their city was built on, that they might throw him off the cliff.', 'Luke 4:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['built', 'threw', 'city', 'they', 'their', 'might', 'cliff', 'rose', 'brow', 'throw']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 30, 'But he, passing through the middle of them, went his way.', 'Luke 4:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['passing', 'them', 'middle', 'went']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 31, 'He came down to Capernaum, a city of Galilee. He was teaching them on the Sabbath day,', 'Luke 4:31', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['city', 'teaching', 'them', 'galilee', 'capernaum', 'down', 'came', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 32, 'and they were astonished at his teaching, for his word was with authority.', 'Luke 4:32', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['astonished', 'they', 'teaching', 'authority', 'word', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 33, 'In the synagogue there was a man who had a spirit of an unclean demon, and he cried out with a loud voice,', 'Luke 4:33', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'voice', 'unclean', 'demon', 'there', 'synagogue', 'cried', 'loud']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 34, 'saying, “Ah! what have we to do with you, Jesus of Nazareth? Have you come to destroy us? I know you who you are: the Holy One of God!”', 'Luke 4:34', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['what', 'saying', 'jesus', 'know', 'holy', 'have', 'come', 'are:', 'nazareth', 'destroy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 35, 'Jesus rebuked him, saying,
“Be silent, and come out of him!”
 When the demon had thrown him down in the middle of them, he came out of him, having done him no harm.', 'Luke 4:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'done', 'jesus', 'harm', 'them', 'demon', 'rebuked', 'come', 'silent', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 36, 'Amazement came on all, and they spoke together, one with another, saying, “What is this word? For with authority and power he commands the unclean spirits, and they come out!”', 'Luke 4:36', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['together', 'they', '“what', 'unclean', 'another', 'saying', 'authority', 'word', 'spoke', 'spirits']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 37, 'News about him went out into every place of the surrounding region.', 'Luke 4:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['surrounding', 'went', 'news', 'place', 'every', 'region']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 38, 'He rose up from the synagogue, and entered into Simon’s house. Simon’s mother-in-law was afflicted with a great fever, and they begged him for her.', 'Luke 4:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'they', 'simon’s', 'mother-in-law', 'entered', 'fever', 'rose', 'afflicted', 'great', 'synagogue']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 39, 'He stood over her, and rebuked the fever; and it left her. Immediately she rose up and served them.', 'Luke 4:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'served', 'stood', 'rose', 'left', 'rebuked', 'immediately', 'them', 'fever;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 40, 'When the sun was setting, all those who had any sick with various diseases brought them to him; and he laid his hands on every one of them, and healed them.', 'Luke 4:40', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['sick', 'him;', 'those', 'healed', 'various', 'brought', 'every', 'when', 'setting', 'diseases']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 41, 'Demons also came out of many, crying out, and saying, “You are the Christ, the Son of God!” Rebuking them, he didn’t allow them to speak, because they knew that he was the Christ.', 'Luke 4:41', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'demons', 'knew', 'saying', 'because', 'speak', 'many', 'crying', '“you', 'didn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 42, 'When it was day, he departed and went into an uninhabited place, and the multitudes looked for him, and came to him, and held on to him, so that he wouldn’t go away from them.', 'Luke 4:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['looked', 'uninhabited', 'went', 'multitudes', 'place', 'held', 'away', 'wouldn’t', 'when', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 43, 'But he said to them,
“I must preach the good news of God’s Kingdom to the other cities also. For this reason I have been sent.”', 'Luke 4:43', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['been', 'preach', 'news', 'god’s', 'good', 'sent', 'kingdom', 'other', 'said', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_4}', 44, 'He was preaching in the synagogues of Galilee.', 'Luke 4:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['galilee', 'synagogues', 'preaching']::TEXT[], NOW());

-- Luke Chapter 5 (39 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 1, 'Now while the multitude pressed on him and heard the word of God, he was standing by the lake of Gennesaret.', 'Luke 5:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['standing', 'pressed', 'multitude', 'word', 'while', 'heard', 'lake', 'gennesaret']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 2, 'He saw two boats standing by the lake, but the fishermen had gone out of them, and were washing their nets.', 'Luke 5:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['fishermen', 'washing', 'gone', 'standing', 'their', 'nets', 'them', 'lake', 'were', 'boats']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 3, 'He entered into one of the boats, which was Simon’s, and asked him to put out a little from the land. He sat down and taught the multitudes from the boat.', 'Luke 5:3', 'WEB', ARRAY['Prayer', 'Teaching']::TEXT[], ARRAY['asked', 'simon’s', 'land', 'entered', 'which', 'taught', 'multitudes', 'boat', 'little', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 4, 'When he had finished speaking, he said to Simon,
“Put out into the deep, and let down your nets for a catch.”', 'Luke 5:4', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['deep', 'catch', 'said', 'finished', 'nets', 'your', 'speaking', 'when', 'simon', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 5, 'Simon answered him, “Master, we worked all night, and took nothing; but at your word I will let down the net.”', 'Luke 5:5', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['“master', 'will', 'night', 'took', 'word', 'your', 'simon', 'nothing;', 'worked', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 6, 'When they had done this, they caught a great multitude of fish, and their net was breaking.', 'Luke 5:6', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'their', 'caught', 'breaking', 'multitude', 'done', 'this', 'when', 'great', 'fish']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 7, 'They beckoned to their partners in the other boat, that they should come and help them. They came, and filled both boats, so that they began to sink.', 'Luke 5:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['help', 'beckoned', 'their', 'they', 'partners', 'should', 'filled', 'both', 'other', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 8, 'But Simon Peter, when he saw it, fell down at Jesus’ knees, saying, “Depart from me, for I am a sinful man, Lord.”', 'Luke 5:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['knees', 'saying', 'jesus’', 'peter', 'sinful', 'fell', 'when', 'simon', 'down', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 9, 'For he was amazed, and all who were with him, at the catch of fish which they had caught;', 'Luke 5:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'catch', 'which', 'caught;', 'amazed', 'fish', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 10, 'and so also were James and John, sons of Zebedee, who were partners with Simon.
Jesus said to Simon,
“Don’t be afraid. From now on you will be catching people alive.”', 'Luke 5:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['zebedee', 'john', 'partners', 'jesus', '“don’t', 'will', 'james', 'alive', 'afraid', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 11, 'When they had brought their boats to land, they left everything, and followed him.', 'Luke 5:11', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'they', 'their', 'land', 'left', 'brought', 'when', 'everything', 'boats']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 12, 'While he was in one of the cities, behold, there was a man full of leprosy. When he saw Jesus, he fell on his face, and begged him, saying, “Lord, if you want to, you can make me clean.”', 'Luke 5:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['want', 'clean', 'face', '“lord', 'saying', 'leprosy', 'jesus', 'make', 'full', 'there']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 13, 'He stretched out his hand, and touched him, saying,
“I want to. Be made clean.”
Immediately the leprosy left him.', 'Luke 5:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['want', 'clean', 'saying', 'leprosy', 'left', 'stretched', 'hand', 'immediately', 'touched', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 14, 'He commanded him to tell no one,
“But go your way, and show yourself to the priest, and offer for your cleansing according to what Moses commanded, for a testimony to them.”', 'Luke 5:14', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['priest', 'testimony', 'what', 'tell', '“but', 'offer', 'cleansing', 'show', 'yourself', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 15, 'But the report concerning him spread much more, and great multitudes came together to hear, and to be healed by him of their infirmities.', 'Luke 5:15', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['spread', 'together', 'their', 'came', 'multitudes', 'hear', 'healed', 'infirmities', 'great', 'report']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 16, 'But he withdrew himself into the desert, and prayed.', 'Luke 5:16', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['desert', 'withdrew', 'himself', 'prayed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 17, 'On one of those days, he was teaching; and there were Pharisees and teachers of the law sitting by, who had come out of every village of Galilee, Judea, and Jerusalem. The power of the Lord was with him to heal them.', 'Luke 5:17', 'WEB', ARRAY['Teaching', 'Miracle']::TEXT[], ARRAY['village', 'heal', 'days', 'sitting', 'judea', 'those', 'there', 'galilee', 'come', 'every']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 18, 'Behold, men brought a paralyzed man on a cot, and they sought to bring him in to lay before Jesus.', 'Luke 5:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'jesus', 'paralyzed', 'brought', 'behold', 'before', 'bring', 'sought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 19, 'Not finding a way to bring him in because of the multitude, they went up to the housetop, and let him down through the tiles with his cot into the middle before Jesus.', 'Luke 5:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'middle', 'tiles', 'multitude', 'because', 'went', 'jesus', 'before', 'housetop', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 20, 'Seeing their faith, he said to him,
“Man, your sins are forgiven you.”', 'Luke 5:20', 'WEB', ARRAY['Faith', 'Forgiveness']::TEXT[], ARRAY['their', 'forgiven', 'sins', 'seeing', '“man', 'said', 'your', 'faith']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 21, 'The scribes and the Pharisees began to reason, saying, “Who is this that speaks blasphemies? Who can forgive sins, but God alone?”', 'Luke 5:21', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['scribes', 'saying', 'alone', 'speaks', 'blasphemies', 'sins', 'this', 'began', 'that', 'forgive']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 22, 'But Jesus, perceiving their thoughts, answered them,
“Why are you reasoning so in your hearts?', 'Luke 5:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['thoughts', 'their', 'jesus', 'hearts', '“why', 'perceiving', 'reasoning', 'your', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 23, 'Which is easier to say, ‘Your sins are forgiven you;’ or to say, ‘Arise and walk?’', 'Luke 5:23', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['which', 'you;’', '‘your', 'sins', 'walk', 'easier', '‘arise', 'forgiven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 24, 'But that you may know that the Son of Man has authority on earth to forgive sins” (he said to the paralyzed man),
“I tell you, arise, and take up your cot, and go to your house.”', 'Luke 5:24', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['house', 'sins”', 'arise', 'tell', 'authority', 'take', 'know', 'paralyzed', 'man)', 'earth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 25, 'Immediately he rose up before them, and took up that which he was laying on, and departed to his house, glorifying God.', 'Luke 5:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'which', 'took', 'rose', 'immediately', 'glorifying', 'laying', 'that', 'before', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 26, 'Amazement took hold on all, and they glorified God. They were filled with fear, saying, “We have seen strange things today.”', 'Luke 5:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'seen', 'saying', 'took', 'filled', 'fear', 'glorified', 'hold', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 27, 'After these things he went out, and saw a tax collector named Levi sitting at the tax office, and said to him,
“Follow me!”', 'Luke 5:27', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['things', 'office', 'named', 'collector', 'after', 'went', '“follow', 'these', 'sitting', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 28, 'He left everything, and rose up and followed him.', 'Luke 5:28', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'everything', 'rose', 'left']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 29, 'Levi made a great feast for him in his house. There was a great crowd of tax collectors and others who were reclining with them.', 'Luke 5:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'reclining', 'feast', 'others', 'there', 'crowd', 'great', 'levi', 'them', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 30, 'Their scribes and the Pharisees murmured against his disciples, saying, “Why do you eat and drink with the tax collectors and sinners?”', 'Luke 5:30', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['their', 'sinners', 'scribes', 'saying', 'collectors', 'murmured', 'drink', 'against', '“why', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 31, 'Jesus answered them,
“Those who are healthy have no need for a physician, but those who are sick do.', 'Luke 5:31', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['“those', 'need', 'jesus', 'physician', 'sick', 'healthy', 'those', 'have', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 32, 'I have not come to call the righteous, but sinners to repentance.”', 'Luke 5:32', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['sinners', 'repentance', 'call', 'have', 'come', 'righteous']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 33, 'They said to him, “Why do John’s disciples often fast and pray, likewise also the disciples of the Pharisees, but yours eat and drink?”', 'Luke 5:33', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['they', 'pray', 'drink', 'likewise', 'yours', 'said', '“why', 'fast', 'often', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 34, 'He said to them,
“Can you make the friends of the bridegroom fast, while the bridegroom is with them?', 'Luke 5:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['friends', '“can', 'make', 'bridegroom', 'said', 'fast', 'while', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 35, 'But the days will come when the bridegroom will be taken away from them. Then they will fast in those days.”', 'Luke 5:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['taken', 'they', 'will', 'days', 'them', 'those', 'away', 'come', 'fast', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 36, 'He also told a parable to them.
“No one puts a piece from a new garment on an old garment, or else he will tear the new, and also the piece from the new will not match the old.', 'Luke 5:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['match', 'garment', 'piece', 'parable', 'tear', 'will', 'else', 'also', 'told', 'puts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 37, 'No one puts new wine into old wine skins, or else the new wine will burst the skins, and it will be spilled, and the skins will be destroyed.', 'Luke 5:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['burst', 'will', 'spilled', 'else', 'skins', 'destroyed', 'puts', 'wine']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 38, 'But new wine must be put into fresh wine skins, and both are preserved.', 'Luke 5:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['wine', 'both', 'preserved', 'skins', 'fresh', 'must']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_5}', 39, 'No man having drunk old wine immediately desires new, for he says, ‘The old is better.’”', 'Luke 5:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['drunk', '‘the', 'desires', 'immediately', 'better', 'says', 'having', 'wine']::TEXT[], NOW());

-- Luke Chapter 6 (49 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 1, 'Now on the second Sabbath after the first, he was going through the grain fields. His disciples plucked the heads of grain and ate, rubbing them in their hands.', 'Luke 6:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['first', 'their', 'fields', 'going', 'after', 'them', 'rubbing', 'second', 'heads', 'plucked']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 2, 'But some of the Pharisees said to them, “Why do you do that which is not lawful to do on the Sabbath day?”', 'Luke 6:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['lawful', 'which', 'sabbath', 'said', 'some', '“why', 'that', 'them', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 3, 'Jesus, answering them, said,
“Haven’t you read what David did when he was hungry, he, and those who were with him;', 'Luke 6:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['hungry', 'what', 'jesus', 'david', 'them', 'him;', 'those', 'said', '“haven’t', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 4, 'how he entered into God’s house, and took and ate the show bread, and gave also to those who were with him, which is not lawful to eat except for the priests alone?”', 'Luke 6:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'gave', 'lawful', 'entered', 'which', 'except', 'took', 'god’s', 'show', 'priests']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 5, 'He said to them,
“The Son of Man is lord of the Sabbath.”', 'Luke 6:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['“the', 'said', 'them', 'lord', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 6, 'It also happened on another Sabbath that he entered into the synagogue and taught. There was a man there, and his right hand was withered.', 'Luke 6:6', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['another', 'entered', 'taught', 'withered', 'there', 'right', 'hand', 'also', 'that', 'happened']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 7, 'The scribes and the Pharisees watched him, to see whether he would heal on the Sabbath, that they might find an accusation against him.', 'Luke 6:7', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['might', 'they', 'heal', 'scribes', 'find', 'sabbath', 'would', 'accusation', 'against', 'watched']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 8, 'But he knew their thoughts; and he said to the man who had the withered hand,
“Rise up, and stand in the middle.” He arose and stood.', 'Luke 6:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['“rise', 'their', 'thoughts;', 'knew', 'stand', 'arose', 'stood', 'withered', 'said', 'hand']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 9, 'Then Jesus said to them,
“I will ask you something: Is it lawful on the Sabbath to do good, or to do harm? To save a life, or to kill?”', 'Luke 6:9', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['lawful', 'save', 'jesus', 'will', 'harm', 'life', 'good', 'something:', 'said', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 10, 'He looked around at them all, and said to the man,
“Stretch out your hand.” He did, and his hand was restored as sound as the other.', 'Luke 6:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['looked', 'restored', 'around', '“stretch', 'other', 'said', 'hand', 'your', 'sound', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 11, 'But they were filled with rage, and talked with one another about what they might do to Jesus.', 'Luke 6:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'they', 'what', 'another', 'jesus', 'filled', 'rage', 'talked', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 12, 'In these days, he went out to the mountain to pray, and he continued all night in prayer to God.', 'Luke 6:12', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['went', 'continued', 'these', 'days', 'pray', 'mountain', 'night', 'prayer']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 13, 'When it was day, he called his disciples, and from them he chose twelve, whom he also named apostles:', 'Luke 6:13', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['named', 'whom', 'chose', 'also', 'when', 'apostles:', 'twelve', 'them', 'disciples', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 14, 'Simon, whom he also named Peter; Andrew, his brother; James; John; Philip; Bartholomew;', 'Luke 6:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['john;', 'named', 'peter;', 'also', 'bartholomew;', 'simon', 'james;', 'brother;', 'andrew', 'philip;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 15, 'Matthew; Thomas; James, the son of Alphaeus; Simon, who was called the Zealot;', 'Luke 6:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['alphaeus;', 'james', 'matthew;', 'zealot;', 'thomas;', 'simon', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 16, 'Judas the son of James; and Judas Iscariot, who also became a traitor.', 'Luke 6:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['iscariot', 'traitor', 'became', 'judas', 'also', 'james;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 17, 'He came down with them, and stood on a level place, with a crowd of his disciples, and a great number of the people from all Judea and Jerusalem, and the sea coast of Tyre and Sidon, who came to hear him and to be healed of their diseases;', 'Luke 6:17', 'WEB', ARRAY['Miracle', 'Discipleship']::TEXT[], ARRAY['crowd', 'them', 'people', 'tyre', 'diseases;', 'hear', 'judea', 'great', 'place', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 18, 'as well as those who were troubled by unclean spirits, and they were being healed.', 'Luke 6:18', 'WEB', ARRAY['Miracle', 'Holy Spirit']::TEXT[], ARRAY['well', 'they', 'unclean', 'troubled', 'those', 'spirits', 'being', 'healed', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 19, 'All the multitude sought to touch him, for power came out of him and healed them all.', 'Luke 6:19', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['multitude', 'healed', 'power', 'them', 'came', 'touch', 'sought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 20, 'He lifted up his eyes to his disciples, and said,
“Blessed are you who are poor,
God’s Kingdom is yours.', 'Luke 6:20', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['poor', 'god’s', 'kingdom', 'yours', 'said', '“blessed', 'eyes', 'disciples', 'lifted']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 21, 'Blessed are you who hunger now,
for you will be filled.
Blessed are you who weep now,
for you will laugh.', 'Luke 6:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['weep', 'laugh', 'will', 'filled', 'hunger', 'blessed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 22, 'Blessed are you when men shall hate you, and when they shall exclude and mock you, and throw out your name as evil, for the Son of Man’s sake.', 'Luke 6:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['exclude', 'they', 'hate', 'name', 'shall', 'throw', 'blessed', 'mock', 'your', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 23, 'Rejoice in that day, and leap for joy, for behold, your reward is great in heaven, for their fathers did the same thing to the prophets.', 'Luke 6:23', 'WEB', ARRAY['Kingdom', 'Prophecy']::TEXT[], ARRAY['thing', 'reward', 'their', 'rejoice', 'great', 'fathers', 'same', 'your', 'prophets', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 24, '“But woe to you who are rich!
For you have received your consolation.', 'Luke 6:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['“but', 'have', 'received', 'consolation', 'rich', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 25, 'Woe to you, you who are full now,
for you will be hungry.
Woe to you who laugh now,
for you will mourn and weep.', 'Luke 6:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['hungry', 'weep', 'laugh', 'will', 'mourn', 'full']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 26, 'Woe,
when
men speak well of you,
for their fathers did the same thing to the false prophets.', 'Luke 6:26', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['thing', 'well', 'their', 'false', 'fathers', 'same', 'when', 'prophets', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 27, '“But I tell you who hear: love your enemies, do good to those who hate you,', 'Luke 6:27', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'hate', 'enemies', 'tell', '“but', 'good', 'those', 'your', 'hear:']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 28, 'bless those who curse you, and pray for those who mistreat you.', 'Luke 6:28', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['pray', 'bless', 'those', 'curse', 'mistreat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 29, 'To him who strikes you on the cheek, offer also the other; and from him who takes away your cloak, don’t withhold your coat also.', 'Luke 6:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['offer', 'don’t', 'away', 'cloak', 'cheek', 'also', 'takes', 'your', 'withhold', 'coat']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 30, 'Give to everyone who asks you, and don’t ask him who takes away your goods to give them back again.', 'Luke 6:30', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['goods', 'give', 'back', 'everyone', 'away', 'again', 'your', 'takes', 'asks', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 31, '“As you would like people to do to you, do exactly so to them.', 'Luke 6:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['exactly', 'would', 'like', 'them', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 32, 'If you love those who love you, what credit is that to you? For even sinners love those who love them.', 'Luke 6:32', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'what', 'sinners', 'credit', 'even', 'those', 'that', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 33, 'If you do good to those who do good to you, what credit is that to you? For even sinners do the same.', 'Luke 6:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'sinners', 'credit', 'good', 'even', 'those', 'same', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 34, 'If you lend to those from whom you hope to receive, what credit is that to you? Even sinners lend to sinners, to receive back as much.', 'Luke 6:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'sinners', 'hope', 'credit', 'lend', 'even', 'those', 'back', 'receive', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 35, 'But love your enemies, and do good, and lend, expecting nothing back; and your reward will be great, and you will be children of the Most High; for he is kind toward the unthankful and evil.', 'Luke 6:35', 'WEB', ARRAY['Love']::TEXT[], ARRAY['most', 'love', 'reward', 'children', 'enemies', 'great', 'lend', 'will', 'good', 'toward']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 36, '“Therefore be merciful,
even as your Father is also merciful.', 'Luke 6:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['“therefore', 'even', 'also', 'father', 'your', 'merciful']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 37, 'Don’t judge,
and you won’t be judged.
Don’t condemn,
and you won’t be condemned.
Set free,
and you will be set free.', 'Luke 6:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['judge', 'free', 'condemn', 'condemned', 'will', 'don’t', 'judged', 'won’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 38, '“Give, and it will be given to you: good measure, pressed down, shaken together, and running over, will be given to you.
For with the same measure you measure it will be measured back to you.”', 'Luke 6:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['you:', 'together', 'over', 'measured', 'pressed', 'shaken', 'given', 'will', 'good', 'running']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 39, 'He spoke a parable to them.
“Can the blind guide the blind? Won’t they both fall into a pit?', 'Luke 6:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'parable', 'fall', '“can', 'spoke', 'both', 'guide', 'them', 'won’t', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 40, 'A disciple is not above his teacher, but everyone when he is fully trained will be like his teacher.', 'Luke 6:40', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['fully', 'teacher', 'will', 'disciple', 'above', 'everyone', 'when', 'like', 'trained']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 41, 'Why do you see the speck of chaff that is in your brother’s eye, but don’t consider the beam that is in your own eye?', 'Luke 6:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['chaff', 'brother’s', 'beam', 'speck', 'consider', 'your', 'that', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 42, 'Or how can you tell your brother, ‘Brother, let me remove the speck of chaff that is in your eye,’ when you yourself don’t see the beam that is in your own eye? You hypocrite! First remove the beam from your own eye, and then you can see clearly to remove the speck of chaff that is in your brother’s eye.', 'Luke 6:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'clearly', 'hypocrite', 'chaff', 'beam', 'tell', 'brother’s', 'brother', '‘brother', 'speck']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 43, 'For there is no good tree that produces rotten fruit; nor again a rotten tree that produces good fruit.', 'Luke 6:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'fruit;', 'fruit', 'good', 'there', 'rotten', 'produces', 'that', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 44, 'For each tree is known by its own fruit. For people don’t gather figs from thorns, nor do they gather grapes from a bramble bush.', 'Luke 6:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['tree', 'they', 'figs', 'thorns', 'gather', 'fruit', 'known', 'each', 'don’t', 'bush']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 45, 'The good man out of the good treasure of his heart brings out that which is good, and the evil man out of the evil treasure of his heart brings out that which is evil, for out of the abundance of the heart, his mouth speaks.', 'Luke 6:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['brings', 'which', 'mouth', 'speaks', 'good', 'abundance', 'that', 'evil', 'heart', 'treasure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 46, '“Why do you call me, ‘Lord, Lord,’ and don’t do the things which I say?', 'Luke 6:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'which', 'call', 'lord', '“why', 'don’t', '‘lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 47, 'Everyone who comes to me, and hears my words, and does them, I will show you who he is like.', 'Luke 6:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['does', 'comes', 'will', 'show', 'everyone', 'words', 'like', 'them', 'hears']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 48, 'He is like a man building a house, who dug and went deep, and laid a foundation on the rock. When a flood arose, the stream broke against that house, and could not shake it, because it was founded on the rock.', 'Luke 6:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'could', 'arose', 'rock', 'deep', 'shake', 'founded', 'building', 'flood', 'stream']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_6}', 49, 'But he who hears, and doesn’t do, is like a man who built a house on the earth without a foundation, against which the stream broke, and immediately it fell, and the ruin of that house was great.”', 'Luke 6:49', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'built', 'without', 'which', 'broke', 'earth', 'against', 'hears', 'immediately', 'fell']::TEXT[], NOW());

-- Luke Chapter 7 (50 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 1, 'After he had finished speaking in the hearing of the people, he entered into Capernaum.', 'Luke 7:1', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['after', 'hearing', 'entered', 'finished', 'speaking', 'capernaum', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 2, 'A certain centurion’s servant, who was dear to him, was sick and at the point of death.', 'Luke 7:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['point', 'death', 'sick', 'servant', 'certain', 'centurion’s', 'dear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 3, 'When he heard about Jesus, he sent to him elders of the Jews, asking him to come and save his servant.', 'Luke 7:3', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['elders', 'jews', 'save', 'jesus', 'come', 'asking', 'servant', 'heard', 'when', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 4, 'When they came to Jesus, they begged him earnestly, saying, “He is worthy for you to do this for him,', 'Luke 7:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'saying', 'jesus', 'worthy', 'this', 'when', 'earnestly', 'came', 'begged']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 5, 'for he loves our nation, and he built our synagogue for us.”', 'Luke 7:5', 'WEB', ARRAY['Love']::TEXT[], ARRAY['built', 'loves', 'nation', 'synagogue']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 6, 'Jesus went with them. When he was now not far from the house, the centurion sent friends to him, saying to him, “Lord, don’t trouble yourself, for I am not worthy for you to come under my roof.', 'Luke 7:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', '“lord', 'went', 'centurion', 'jesus', 'saying', 'worthy', 'friends', 'under', 'roof']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 7, 'Therefore I didn’t even think myself worthy to come to you; but say the word, and my servant will be healed.', 'Luke 7:7', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['you;', 'think', 'therefore', 'worthy', 'will', 'word', 'even', 'myself', 'didn’t', 'healed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 8, 'For I also am a man placed under authority, having under myself soldiers. I tell this one, ‘Go!’ and he goes; and to another, ‘Come!’ and he comes; and to my servant, ‘Do this,’ and he does it.”', 'Luke 7:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['placed', 'does', 'tell', 'another', '‘come', 'authority', 'under', 'goes;', 'myself', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 9, 'When Jesus heard these things, he marveled at him, and turned and said to the multitude who followed him,
“I tell you, I have not found such great faith, no, not in Israel.”', 'Luke 7:9', 'WEB', ARRAY['Faith', 'Discipleship']::TEXT[], ARRAY['things', 'followed', 'found', 'multitude', 'tell', 'jesus', 'these', 'great', 'marveled', 'turned']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 10, 'Those who were sent, returning to the house, found that the servant who had been sick was well.', 'Luke 7:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'found', 'been', 'well', 'sick', 'those', 'servant', 'that', 'returning', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 11, 'Soon afterwards, he went to a city called Nain. Many of his disciples, along with a great multitude, went with him.', 'Luke 7:11', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['nain', 'city', 'afterwards', 'soon', 'went', 'multitude', 'many', 'great', 'disciples', 'along']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 12, 'Now when he came near to the gate of the city, behold, one who was dead was carried out, the only son of his mother, and she was a widow. Many people of the city were with her.', 'Luke 7:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'carried', 'mother', 'behold', 'only', 'widow', 'dead', 'many', 'when', 'near']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 13, 'When the Lord saw her, he had compassion on her, and said to her,
“Don’t cry.”', 'Luke 7:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['compassion', '“don’t', 'said', 'when', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 14, 'He came near and touched the coffin, and the bearers stood still. He said,
“Young man, I tell you, arise!”', 'Luke 7:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['arise', 'tell', 'still', 'coffin', 'stood', 'said', 'bearers', 'touched', '“young', 'near']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 15, 'He who was dead sat up, and began to speak. And he gave him to his mother.', 'Luke 7:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'mother', 'dead', 'began', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 16, 'Fear took hold of all, and they glorified God, saying, “A great prophet has arisen among us!” and, “God has visited his people!”', 'Luke 7:16', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['they', 'saying', '“god', 'took', 'visited', 'arisen', 'fear', 'hold', 'glorified', 'among']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 17, 'This report went out concerning him in the whole of Judea, and in all the surrounding region.', 'Luke 7:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['surrounding', 'went', 'judea', 'this', 'whole', 'region', 'report', 'concerning']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 18, 'The disciples of John told him about all these things.', 'Luke 7:18', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['things', 'john', 'these', 'told', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 19, 'John, calling to himself two of his disciples, sent them to Jesus, saying, “Are you the one who is coming, or should we look for another?”', 'Luke 7:19', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['calling', 'john', 'saying', 'coming', 'jesus', 'should', 'another', 'himself', '“are', 'look']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 20, 'When the men had come to him, they said, “John the Baptizer has sent us to you, saying, ‘Are you he who comes, or should we look for another?’”', 'Luke 7:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'saying', 'should', 'another', 'comes', 'look', 'said', 'come', 'baptizer', '“john']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 21, 'In that hour he cured many of diseases and plagues and evil spirits; and to many who were blind he gave sight.', 'Luke 7:21', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['gave', 'sight', 'hour', 'blind', 'many', 'evil', 'that', 'diseases', 'were', 'spirits;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 22, 'Jesus answered them,
“Go and tell John the things which you have seen and heard: that the blind receive their sight, the lame walk, the lepers are cleansed, the deaf hear, the dead are raised up, and the poor have good news preached to them.', 'Luke 7:22', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['john', 'seen', 'sight', 'deaf', 'walk', 'cleansed', 'dead', 'preached', 'them', 'lepers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 23, 'Blessed is he who finds no occasion for stumbling in me.”', 'Luke 7:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['blessed', 'occasion', 'stumbling', 'finds']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 24, 'When John’s messengers had departed, he began to tell the multitudes about John,
“What did you go out into the wilderness to see? A reed shaken by the wind?', 'Luke 7:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['“what', 'wilderness', 'john', 'tell', 'shaken', 'wind', 'multitudes', 'began', 'when', 'reed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 25, 'But what did you go out to see? A man clothed in soft clothing? Behold, those who are gorgeously dressed, and live delicately, are in kings’ courts.', 'Luke 7:25', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['clothed', 'what', 'kings’', 'courts', 'those', 'live', 'behold', 'clothing', 'delicately', 'soft']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 26, 'But what did you go out to see? A prophet? Yes, I tell you, and much more than a prophet.', 'Luke 7:26', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['than', 'what', 'tell', 'prophet', 'more', 'much']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 27, 'This is he of whom it is written,
‘Behold, I send my messenger before your face,
who will prepare your way before you.’', 'Luke 7:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', 'messenger', 'send', 'face', 'prepare', 'will', '‘behold', 'this', 'your', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 28, '“For I tell you, among those who are born of women there is not a greater prophet than John the Baptizer, yet he who is least in God’s Kingdom is greater than he.”', 'Luke 7:28', 'WEB', ARRAY['Kingdom', 'Prophecy']::TEXT[], ARRAY['than', 'john', 'tell', 'god’s', 'least', 'those', 'among', 'there', '“for', 'born']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 29, 'When all the people and the tax collectors heard this, they declared God to be just, having been baptized with John’s baptism.', 'Luke 7:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['just', 'they', 'been', 'baptized', 'john’s', 'this', 'declared', 'heard', 'when', 'having']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 30, 'But the Pharisees and the lawyers rejected the counsel of God, not being baptized by him themselves.', 'Luke 7:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['baptized', 'lawyers', 'counsel', 'being', 'rejected', 'themselves', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 31, '“To what then will I liken the people of this generation? What are they like?', 'Luke 7:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'what', 'liken', 'will', 'this', 'generation', 'then', 'like', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 32, 'They are like children who sit in the marketplace, and call to one another, saying, ‘We piped to you, and you didn’t dance. We mourned, and you didn’t weep.’', 'Luke 7:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'marketplace', 'they', 'mourned', 'weep', 'another', 'saying', 'call', 'piped', 'dance']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 33, 'For John the Baptizer came neither eating bread nor drinking wine, and you say, ‘He has a demon.’', 'Luke 7:33', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['john', 'drinking', 'demon', 'neither', 'eating', 'baptizer', 'bread', 'wine', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 34, 'The Son of Man has come eating and drinking, and you say, ‘Behold, a gluttonous man, and a drunkard; a friend of tax collectors and sinners!’', 'Luke 7:34', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['sinners', 'drinking', 'drunkard;', 'friend', '‘behold', 'come', 'eating', 'gluttonous', 'collectors']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 35, 'Wisdom is justified by all her children.”', 'Luke 7:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['justified', 'wisdom', 'children']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 36, 'One of the Pharisees invited him to eat with him. He entered into the Pharisee’s house, and sat at the table.', 'Luke 7:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'invited', 'entered', 'table', 'pharisee’s', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 37, 'Behold, a woman in the city who was a sinner, when she knew that he was reclining in the Pharisee’s house, brought an alabaster jar of ointment.', 'Luke 7:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'city', 'reclining', 'sinner', 'woman', 'knew', 'brought', 'when', 'behold', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 38, 'Standing behind at his feet weeping, she began to wet his feet with her tears, and she wiped them with the hair of her head, kissed his feet, and anointed them with the ointment.', 'Luke 7:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['standing', 'feet', 'tears', 'wiped', 'began', 'head', 'anointed', 'ointment', 'behind', 'kissed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 39, 'Now when the Pharisee who had invited him saw it, he said to himself, “This man, if he were a prophet, would have perceived who and what kind of woman this is who touches him, that she is a sinner.”', 'Luke 7:39', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['invited', 'what', 'woman', 'sinner', 'pharisee', 'would', 'himself', 'kind', 'this', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 40, 'Jesus answered him,
“Simon, I have something to tell you.”

He said, “Teacher, say on.”', 'Luke 7:40', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['something', '“simon', 'tell', 'jesus', 'have', 'said', '“teacher', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 41, '“A certain lender had two debtors. The one owed five hundred denarii, and the other fifty.', 'Luke 7:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['five', 'denarii', 'hundred', 'lender', 'other', 'certain', 'fifty', 'owed', 'debtors']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 42, 'When they couldn’t pay, he forgave them both. Which of them therefore will love him most?”', 'Luke 7:42', 'WEB', ARRAY['Love']::TEXT[], ARRAY['most', 'love', 'they', 'therefore', 'which', 'will', 'couldn’t', 'both', 'forgave', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 43, 'Simon answered, “He, I suppose, to whom he forgave the most.”
He said to him,
“You have judged correctly.”', 'Luke 7:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'answered', 'correctly', 'whom', 'forgave', '“you', 'said', 'have', 'simon', 'judged']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 44, 'Turning to the woman, he said to Simon,
“Do you see this woman? I entered into your house, and you gave me no water for my feet, but she has wet my feet with her tears, and wiped them with the hair of her head.', 'Luke 7:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'gave', 'woman', 'entered', 'feet', 'turning', 'this', 'said', 'wiped', 'head']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 45, 'You gave me no kiss, but she, since the time I came in, has not ceased to kiss my feet.', 'Luke 7:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'time', 'feet', 'since', 'ceased', 'came', 'kiss']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 46, 'You didn’t anoint my head with oil, but she has anointed my feet with ointment.', 'Luke 7:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['anoint', 'feet', 'didn’t', 'anointed', 'ointment', 'head']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 47, 'Therefore I tell you, her sins, which are many, are forgiven, for she loved much. But to whom little is forgiven, the same loves little.”', 'Luke 7:47', 'WEB', ARRAY['Love', 'Forgiveness']::TEXT[], ARRAY['therefore', 'tell', 'which', 'sins', 'many', 'same', 'loves', 'loved', 'little', 'forgiven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 48, 'He said to her,
“Your sins are forgiven.”', 'Luke 7:48', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['said', 'forgiven', '“your', 'sins']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 49, 'Those who sat at the table with him began to say to themselves, “Who is this who even forgives sins?”', 'Luke 7:49', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['even', 'sins', 'those', 'table', 'this', 'forgives', 'began', '“who', 'themselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_7}', 50, 'He said to the woman,
“Your faith has saved you. Go in peace.”', 'Luke 7:50', 'WEB', ARRAY['Faith', 'Salvation']::TEXT[], ARRAY['woman', 'saved', '“your', 'peace', 'said', 'faith']::TEXT[], NOW());

-- Luke Chapter 8 (56 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 1, 'Soon afterwards, he went about through cities and villages, preaching and bringing the good news of God’s Kingdom. With him were the twelve,', 'Luke 8:1', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['afterwards', 'soon', 'villages', 'went', 'news', 'god’s', 'good', 'kingdom', 'twelve', 'cities']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 2, 'and certain women who had been healed of evil spirits and infirmities: Mary who was called Magdalene, from whom seven demons had gone out;', 'Luke 8:2', 'WEB', ARRAY['Miracle', 'Holy Spirit']::TEXT[], ARRAY['magdalene', 'been', 'demons', 'gone', 'out;', 'whom', 'mary', 'spirits', 'healed', 'certain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 3, 'and Joanna, the wife of Chuzas, Herod’s steward; Susanna; and many others; who served them from their possessions.', 'Luke 8:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'herod’s', 'susanna;', 'them', 'others;', 'wife', 'many', 'possessions', 'chuzas', 'joanna']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 4, 'When a great multitude came together, and people from every city were coming to him, he spoke by a parable.', 'Luke 8:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'city', 'multitude', 'coming', 'parable', 'spoke', 'every', 'when', 'great', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 5, '“The farmer went out to sow his seed. As he sowed, some fell along the road, and it was trampled under foot, and the birds of the sky devoured it.', 'Luke 8:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['sowed', 'went', 'trampled', 'seed', 'road', 'under', 'farmer', 'devoured', 'birds', 'foot']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 6, 'Other seed fell on the rock, and as soon as it grew, it withered away, because it had no moisture.', 'Luke 8:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['grew', 'soon', 'because', 'seed', 'moisture', 'withered', 'other', 'fell', 'away', 'rock']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 7, 'Other fell amid the thorns, and the thorns grew with it, and choked it.', 'Luke 8:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['grew', 'amid', 'thorns', 'other', 'fell', 'choked']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 8, 'Other fell into the good ground, and grew, and produced one hundred times as much fruit.” As he said these things, he called out,
“He who has ears to hear, let him hear!”', 'Luke 8:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['grew', 'things', 'much', 'times', 'ground', 'hundred', 'fruit', 'these', 'hear', 'good']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 9, 'Then his disciples asked him, “What does this parable mean?”', 'Luke 8:9', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['asked', '“what', 'does', 'parable', 'this', 'mean', 'then', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 10, 'He said,
“To you it is given to know the mysteries of God’s Kingdom, but to the rest in parables; that ‘seeing they may not see, and hearing they may not understand.’', 'Luke 8:10', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'rest', 'hearing', 'given', 'god’s', 'know', 'parables;', 'mysteries', '‘seeing', 'understand']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 11, 'Now the parable is this: The seed is the word of God.', 'Luke 8:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['seed', 'word', 'this:', 'parable']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 12, 'Those along the road are those who hear, then the devil comes, and takes away the word from their heart, that they may not believe and be saved.', 'Luke 8:12', 'WEB', ARRAY['Faith', 'Salvation']::TEXT[], ARRAY['their', 'they', 'believe', 'road', 'comes', 'hear', 'saved', 'word', 'those', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 13, 'Those on the rock are they who, when they hear, receive the word with joy; but these have no root, who believe for a while, then fall away in time of temptation.', 'Luke 8:13', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['root', 'they', 'time', 'fall', 'these', 'hear', 'then', 'word', 'temptation', 'those']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 14, 'That which fell among the thorns, these are those who have heard, and as they go on their way they are choked with cares, riches, and pleasures of life, and bring no fruit to maturity.', 'Luke 8:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'thorns', 'life', 'those', 'choked', 'which', 'maturity', 'pleasures', 'heard', 'riches']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 15, 'Those in the good ground, these are those who with an honest and good heart, having heard the word, hold it tightly, and produce fruit with perseverance.', 'Luke 8:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['tightly', 'ground', 'fruit', 'these', 'good', 'word', 'those', 'honest', 'hold', 'heard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 16, '“No one, when he has lit a lamp, covers it with a container, or puts it under a bed; but puts it on a stand, that those who enter in may see the light.', 'Luke 8:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['puts', 'under', 'stand', 'light', 'container', 'those', 'enter', 'when', 'that', 'covers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 17, 'For nothing is hidden, that will not be revealed; nor anything secret, that will not be known and come to light.', 'Luke 8:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['hidden', 'secret', 'will', 'light', 'known', 'come', 'nothing', 'that', 'anything', 'revealed;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 18, 'Be careful therefore how you hear. For whoever has, to him will be given; and whoever doesn’t have, from him will be taken away even that which he thinks he has.”', 'Luke 8:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['taken', 'therefore', 'given;', 'which', 'will', 'hear', 'careful', 'thinks', 'even', 'whoever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 19, 'His mother and brothers came to him, and they could not come near him for the crowd.', 'Luke 8:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'mother', 'could', 'crowd', 'come', 'brothers', 'near', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 20, 'Some people told him, “Your mother and your brothers stand outside, desiring to see you.”', 'Luke 8:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['desiring', 'mother', 'stand', '“your', 'some', 'told', 'your', 'brothers', 'people', 'outside']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 21, 'But he answered them,
“My mother and my brothers are these who hear the word of God, and do it.”', 'Luke 8:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['mother', 'these', 'hear', 'word', 'brothers', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 22, 'Now on one of those days, he entered into a boat, himself and his disciples, and he said to them,
“Let’s go over to the other side of the lake.” So they launched out.', 'Luke 8:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['over', 'they', 'launched', 'entered', '“let’s', 'days', 'himself', 'side', 'those', 'other']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 23, 'But as they sailed, he fell asleep. A wind storm came down on the lake, and they were taking on dangerous amounts of water.', 'Luke 8:23', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'asleep', 'amounts', 'wind', 'storm', 'fell', 'dangerous', 'taking', 'water', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 24, 'They came to him, and awoke him, saying, “Master, master, we are dying!” He awoke, and rebuked the wind and the raging of the water, and they ceased, and it was calm.', 'Luke 8:24', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['awoke', 'they', 'saying', 'wind', '“master', 'dying', 'raging', 'rebuked', 'ceased', 'calm']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 25, 'He said to them,
“Where is your faith?” Being afraid they marveled, saying to one another, “Who is this then, that he commands even the winds and the water, and they obey him?”', 'Luke 8:25', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'saying', 'another', 'your', 'then', 'them', 'even', 'this', 'commands', 'marveled']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 26, 'They arrived at the country of the Gadarenes, which is opposite Galilee.', 'Luke 8:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'gadarenes', 'which', 'arrived', 'galilee', 'country', 'opposite']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 27, 'When Jesus stepped ashore, a certain man out of the city who had demons for a long time met him. He wore no clothes, and didn’t live in a house, but in the tombs.', 'Luke 8:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['wore', 'city', 'clothes', 'time', 'demons', 'house', 'jesus', 'ashore', 'didn’t', 'tombs']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 28, 'When he saw Jesus, he cried out, and fell down before him, and with a loud voice said, “What do I have to do with you, Jesus, you Son of the Most High God? I beg you, don’t torment me!”', 'Luke 8:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'voice', 'torment', '“what', 'jesus', 'high', 'fell', 'loud', 'said', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 29, 'For Jesus was commanding the unclean spirit to come out of the man. For the unclean spirit had often seized the man. He was kept under guard, and bound with chains and fetters. Breaking the bonds apart, he was driven by the demon into the desert.', 'Luke 8:29', 'WEB', ARRAY['Kingdom', 'Holy Spirit']::TEXT[], ARRAY['unclean', 'desert', 'demon', 'chains', 'fetters', 'spirit', 'bound', 'bonds', 'often', 'driven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 30, 'Jesus asked him,
“What is your name?”
He said, “Legion,” for many demons had entered into him.', 'Luke 8:30', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', '“what', 'demons', 'name', 'entered', 'jesus', 'many', 'said', 'your', '“legion']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 31, 'They begged him that he would not command them to go into the abyss.', 'Luke 8:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['command', 'they', 'abyss', 'would', 'that', 'them', 'begged']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 32, 'Now there was there a herd of many pigs feeding on the mountain, and they begged him that he would allow them to enter into those. He allowed them.', 'Luke 8:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'allowed', 'feeding', 'would', 'mountain', 'herd', 'there', 'many', 'pigs', 'allow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 33, 'The demons came out of the man, and entered into the pigs, and the herd rushed down the steep bank into the lake, and were drowned.', 'Luke 8:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['bank', 'demons', 'entered', 'drowned', 'pigs', 'herd', 'steep', 'down', 'lake', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 34, 'When those who fed them saw what had happened, they fled, and told it in the city and in the country.', 'Luke 8:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'they', 'what', 'those', 'told', 'fled', 'when', 'happened', 'them', 'country']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 35, 'People went out to see what had happened. They came to Jesus, and found the man from whom the demons had gone out, sitting at Jesus’ feet, clothed and in his right mind; and they were afraid.', 'Luke 8:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'demons', 'went', 'sitting', 'people', 'were', 'whom', 'found', 'feet', 'jesus’']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 36, 'Those who saw it told them how he who had been possessed by demons was healed.', 'Luke 8:36', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['been', 'demons', 'those', 'healed', 'told', 'them', 'possessed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 37, 'All the people of the surrounding country of the Gadarenes asked him to depart from them, for they were very much afraid. He entered into the boat, and returned.', 'Luke 8:37', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'surrounding', 'depart', 'gadarenes', 'they', 'much', 'entered', 'returned', 'very', 'afraid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 38, 'But the man from whom the demons had gone out begged him that he might go with him, but Jesus sent him away, saying,', 'Luke 8:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'gone', 'demons', 'saying', 'jesus', 'whom', 'away', 'that', 'sent', 'begged']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 39, '“Return to your house, and declare what great things God has done for you.” He went his way, proclaiming throughout the whole city what great things Jesus had done for him.', 'Luke 8:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'things', 'throughout', 'city', 'what', 'went', 'done', 'proclaiming', 'jesus', 'declare']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 40, 'When Jesus returned, the multitude welcomed him, for they were all waiting for him.', 'Luke 8:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'multitude', 'returned', 'jesus', 'welcomed', 'when', 'waiting', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 41, 'Behold, there came a man named Jairus, and he was a ruler of the synagogue. He fell down at Jesus’ feet, and begged him to come into his house,', 'Luke 8:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'jairus', 'named', 'jesus’', 'feet', 'there', 'fell', 'come', 'behold', 'synagogue']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 42, 'for he had an only daughter, about twelve years of age, and she was dying. But as he went, the multitudes pressed against him.', 'Luke 8:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['years', 'pressed', 'went', 'dying', 'daughter', 'multitudes', 'only', 'against', 'twelve']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 43, 'A woman who had a flow of blood for twelve years, who had spent all her living on physicians, and could not be healed by any,', 'Luke 8:43', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['years', 'spent', 'woman', 'twelve', 'could', 'physicians', 'healed', 'blood', 'living', 'flow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 44, 'came behind him, and touched the fringe of his cloak, and immediately the flow of her blood stopped.', 'Luke 8:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['fringe', 'flow', 'cloak', 'immediately', 'blood', 'touched', 'behind', 'came', 'stopped']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 45, 'Jesus said,
“Who touched me?”
When all denied it, Peter and those with him said, “Master, the multitudes press and jostle you, and you say,
‘Who touched me?’”', 'Luke 8:45', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['jesus', '“master', 'multitudes', 'peter', 'those', 'said', 'denied', 'press', 'touched', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 46, 'But Jesus said,
“Someone did touch me, for I perceived that power has gone out of me.”', 'Luke 8:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['gone', 'jesus', 'said', 'that', 'power', '“someone', 'perceived', 'touch']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 47, 'When the woman saw that she was not hidden, she came trembling, and falling down before him declared to him in the presence of all the people the reason why she had touched him, and how she was healed immediately.', 'Luke 8:47', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['presence', 'hidden', 'woman', 'falling', 'healed', 'immediately', 'trembling', 'when', 'declared', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 48, 'He said to her,
“Daughter, cheer up. Your faith has made you well. Go in peace.”', 'Luke 8:48', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['well', 'peace', 'said', 'cheer', 'your', '“daughter', 'faith', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 49, 'While he still spoke, one from the ruler of the synagogue’s house came, saying to him, “Your daughter is dead. Don’t trouble the Teacher.”', 'Luke 8:49', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['house', 'synagogue’s', 'teacher', 'saying', 'still', 'daughter', '“your', 'spoke', 'trouble', 'dead']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 50, 'But Jesus hearing it, answered him,
“Don’t be afraid. Only believe, and she will be healed.”', 'Luke 8:50', 'WEB', ARRAY['Faith', 'Miracle']::TEXT[], ARRAY['hearing', 'jesus', '“don’t', 'will', 'only', 'afraid', 'healed', 'believe', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 51, 'When he came to the house, he didn’t allow anyone to enter in, except Peter, John, James, the father of the child, and her mother.', 'Luke 8:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'anyone', 'john', 'except', 'mother', 'james', 'peter', 'child', 'didn’t', 'allow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 52, 'All were weeping and mourning her, but he said,
“Don’t weep. She isn’t dead, but sleeping.”', 'Luke 8:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'weep', '“don’t', 'dead', 'said', 'sleeping', 'mourning', 'weeping', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 53, 'They were ridiculing him, knowing that she was dead.', 'Luke 8:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'ridiculing', 'knowing', 'dead', 'that', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 54, 'But he put them all outside, and taking her by the hand, he called, saying,
“Child, arise!”', 'Luke 8:54', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['arise', 'saying', '“child', 'outside', 'hand', 'them', 'taking', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 55, 'Her spirit returned, and she rose up immediately. He commanded that something be given to her to eat.', 'Luke 8:55', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['something', 'spirit', 'returned', 'given', 'rose', 'immediately', 'that', 'commanded']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_8}', 56, 'Her parents were amazed, but he commanded them to tell no one what had been done.', 'Luke 8:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'what', 'tell', 'done', 'parents', 'commanded', 'amazed', 'them', 'were']::TEXT[], NOW());

-- Luke Chapter 9 (62 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 1, 'He called the twelve together, and gave them power and authority over all demons, and to cure diseases.', 'Luke 9:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'over', 'gave', 'demons', 'diseases', 'authority', 'cure', 'power', 'twelve', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 2, 'He sent them out to preach God’s Kingdom and to heal the sick.', 'Luke 9:2', 'WEB', ARRAY['Kingdom', 'Miracle']::TEXT[], ARRAY['preach', 'heal', 'god’s', 'sick', 'sent', 'them', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 3, 'He said to them,
“Take nothing for your journey—neither staffs, nor wallet, nor bread, nor money; neither have two coats each.', 'Luke 9:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['wallet', 'money;', 'coats', 'journey—neither', 'each', 'said', 'have', 'your', 'neither', 'nothing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 4, 'Into whatever house you enter, stay there, and depart from there.', 'Luke 9:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'depart', 'whatever', 'stay', 'there', 'enter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 5, 'As many as don’t receive you, when you depart from that city, shake off even the dust from your feet for a testimony against them.”', 'Luke 9:5', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['city', 'depart', 'shake', 'dust', 'testimony', 'feet', 'even', 'many', 'against', 'receive']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 6, 'They departed, and went throughout the villages, preaching the Good News, and healing everywhere.', 'Luke 9:6', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['throughout', 'they', 'went', 'villages', 'news', 'everywhere', 'good', 'healing', 'preaching', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 7, 'Now Herod the tetrarch heard of all that was done by him; and he was very perplexed, because it was said by some that John had risen from the dead,', 'Luke 9:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['risen', 'perplexed', 'herod', 'john', 'because', 'done', 'tetrarch', 'him;', 'very', 'dead']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 8, 'and by some that Elijah had appeared, and by others that one of the old prophets had risen again.', 'Luke 9:8', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['risen', 'others', 'elijah', 'some', 'prophets', 'that', 'appeared', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 9, 'Herod said, “John I beheaded, but who is this, about whom I hear such things?” He sought to see him.', 'Luke 9:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'herod', 'sought', 'hear', 'beheaded', 'this', 'said', '“john', 'such', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 10, 'The apostles, when they had returned, told him what things they had done.
He took them, and withdrew apart to a desert region of a city called Bethsaida.', 'Luke 9:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'withdrew', 'they', 'city', 'what', 'returned', 'done', 'desert', 'took', 'apostles']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 11, 'But the multitudes, perceiving it, followed him. He welcomed them, and spoke to them of God’s Kingdom, and he cured those who needed healing.', 'Luke 9:11', 'WEB', ARRAY['Kingdom', 'Miracle', 'Discipleship']::TEXT[], ARRAY['followed', 'multitudes', 'god’s', 'spoke', 'those', 'welcomed', 'needed', 'healing', 'perceiving', 'cured']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 12, 'The day began to wear away; and the twelve came, and said to him, “Send the multitude away, that they may go into the surrounding villages and farms, and lodge, and get food, for we are here in a deserted place.”', 'Luke 9:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'surrounding', 'multitude', 'villages', 'deserted', 'away', 'farms', 'twelve', 'wear', '“send']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 13, 'But he said to them,
“You give them something to eat.”
They said, “We have no more than five loaves and two fish, unless we should go and buy food for all these people.”', 'Luke 9:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['something', 'five', 'unless', 'they', 'than', 'should', 'loaves', 'give', 'these', '“you']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 14, 'For they were about five thousand men.
He said to his disciples,
“Make them sit down in groups of about fifty each.”', 'Luke 9:14', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['five', 'they', 'down', 'each', 'said', '“make', 'groups', 'thousand', 'fifty', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 15, 'They did so, and made them all sit down.', 'Luke 9:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'made', 'them', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 16, 'He took the five loaves and the two fish, and looking up to the sky, he blessed them, and broke them, and gave them to the disciples to set before the multitude.', 'Luke 9:16', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['five', 'gave', 'multitude', 'loaves', 'took', 'them', 'blessed', 'looking', 'before', 'fish']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 17, 'They ate, and were all filled. They gathered up twelve baskets of broken pieces that were left over.', 'Luke 9:17', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['over', 'they', 'broken', 'filled', 'baskets', 'left', 'gathered', 'that', 'twelve', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 18, 'As he was praying alone, the disciples were with him, and he asked them,
“Who do the multitudes say that I am?”', 'Luke 9:18', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['praying', 'asked', 'multitudes', 'that', 'alone', '“who', 'them', 'disciples', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 19, 'They answered, “‘John the Baptizer,’ but others say, ‘Elijah,’ and others, that one of the old prophets is risen again.”', 'Luke 9:19', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['risen', 'they', '‘elijah', '“‘john', 'others', 'baptizer', 'prophets', 'that', 'again', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 20, 'He said to them,
“But who do you say that I am?”
Peter answered, “The Christ of God.”', 'Luke 9:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['“the', '“but', 'peter', 'said', 'that', 'them', 'christ', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 21, 'But he warned them, and commanded them to tell this to no one,', 'Luke 9:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['tell', 'this', 'commanded', 'them', 'warned']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 22, 'saying,
“The Son of Man must suffer many things, and be rejected by the elders, chief priests, and scribes, and be killed, and the third day be raised up.”', 'Luke 9:22', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['things', 'suffer', 'killed', 'elders', 'saying', 'scribes', 'priests', 'many', 'rejected', 'third']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 23, 'He said to all,
“If anyone desires to come after me, let him deny himself, take up his cross,
and follow me.', 'Luke 9:23', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['anyone', 'after', 'deny', 'desires', 'take', 'himself', 'said', 'come', 'follow', 'cross']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 24, 'For whoever desires to save his life will lose it, but whoever will lose his life for my sake, the same will save it.', 'Luke 9:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['save', 'life', 'will', 'desires', 'lose', 'whoever', 'same', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 25, 'For what does it profit a man if he gains the whole world, and loses or forfeits his own self?', 'Luke 9:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['does', 'what', 'gains', 'forfeits', 'self', 'whole', 'world', 'loses', 'profit']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 26, 'For whoever will be ashamed of me and of my words, of him will the Son of Man be ashamed, when he comes in his glory, and the glory of the Father, and of the holy angels.', 'Luke 9:26', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['will', 'ashamed', 'comes', 'holy', 'whoever', 'words', 'when', 'father', 'glory', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 27, 'But I tell you the truth: There are some of those who stand here, who will in no way taste of death, until they see God’s Kingdom.”', 'Luke 9:27', 'WEB', ARRAY['Kingdom', 'Truth']::TEXT[], ARRAY['they', 'tell', 'stand', 'will', 'death', 'until', 'god’s', 'those', 'there', 'some']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 28, 'About eight days after these sayings, he took with him Peter, John, and James, and went up onto the mountain to pray.', 'Luke 9:28', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['after', 'john', 'went', 'these', 'days', 'sayings', 'took', 'peter', 'james', 'onto']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 29, 'As he was praying, the appearance of his face was altered, and his clothing became white and dazzling.', 'Luke 9:29', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['praying', 'appearance', 'face', 'became', 'white', 'dazzling', 'clothing', 'altered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 30, 'Behold, two men were talking with him, who were Moses and Elijah,', 'Luke 9:30', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['elijah', 'behold', 'moses', 'were', 'talking']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 31, 'who appeared in glory, and spoke of his departure, which he was about to accomplish at Jerusalem.', 'Luke 9:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'accomplish', 'departure', 'spoke', 'jerusalem', 'appeared', 'glory']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 32, 'Now Peter and those who were with him were heavy with sleep, but when they were fully awake, they saw his glory, and the two men who stood with him.', 'Luke 9:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['fully', 'they', 'heavy', 'stood', 'peter', 'those', 'awake', 'sleep', 'when', 'glory']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 33, 'As they were parting from him, Peter said to Jesus, “Master, it is good for us to be here. Let’s make three tents: one for you, and one for Moses, and one for Elijah,” not knowing what he said.', 'Luke 9:33', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['they', 'what', 'let’s', 'jesus', '“master', 'parting', 'tents:', 'good', 'peter', 'make']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 34, 'While he said these things, a cloud came and overshadowed them, and they were afraid as they entered into the cloud.', 'Luke 9:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'entered', 'overshadowed', 'cloud', 'these', 'afraid', 'said', 'while', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 35, 'A voice came out of the cloud, saying, “This is my beloved Son. Listen to him!”', 'Luke 9:35', 'WEB', ARRAY['Love']::TEXT[], ARRAY['voice', 'beloved', 'saying', 'cloud', 'listen', '“this', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 36, 'When the voice came, Jesus was found alone. They were silent, and told no one in those days any of the things which they had seen.', 'Luke 9:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'voice', 'they', 'things', 'seen', 'which', 'jesus', 'days', 'those', 'told']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 37, 'On the next day, when they had come down from the mountain, a great multitude met him.', 'Luke 9:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'multitude', 'next', 'mountain', 'come', 'when', 'great', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 38, 'Behold, a man from the crowd called out, saying, “Teacher, I beg you to look at my son, for he is my only child.', 'Luke 9:38', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['saying', 'only', 'look', 'child', 'crowd', '“teacher', 'behold', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 39, 'Behold, a spirit takes him, he suddenly cries out, and it convulses him so that he foams, and it hardly departs from him, bruising him severely.', 'Luke 9:39', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['suddenly', 'spirit', 'departs', 'convulses', 'foams', 'bruising', 'severely', 'cries', 'takes', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 40, 'I begged your disciples to cast it out, and they couldn’t.”', 'Luke 9:40', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'couldn’t', 'begged', 'your', 'disciples', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 41, 'Jesus answered,
“Faithless and perverse generation, how long shall I be with you and bear with you? Bring your son here.”', 'Luke 9:41', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['“faithless', 'jesus', 'shall', 'bring', 'your', 'generation', 'perverse', 'long', 'bear', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 42, 'While he was still coming, the demon threw him down and convulsed him violently. But Jesus rebuked the unclean spirit, and healed the boy, and gave him back to his father.', 'Luke 9:42', 'WEB', ARRAY['Miracle', 'Holy Spirit']::TEXT[], ARRAY['threw', 'convulsed', 'spirit', 'gave', 'unclean', 'coming', 'jesus', 'still', 'demon', 'violently']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 43, 'They were all astonished at the majesty of God.
But while all were marveling at all the things which Jesus did, he said to his disciples,', 'Luke 9:43', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['things', 'astonished', 'they', 'which', 'jesus', 'disciples', 'said', 'while', 'marveling', 'majesty']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 44, '“Let these words sink into your ears, for the Son of Man will be delivered up into the hands of men.”', 'Luke 9:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['these', '“let', 'will', 'delivered', 'ears', 'sink', 'words', 'your', 'hands']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 45, 'But they didn’t understand this saying. It was concealed from them, that they should not perceive it, and they were afraid to ask him about this saying.', 'Luke 9:45', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['they', 'saying', 'should', 'concealed', 'perceive', 'understand', 'didn’t', 'this', 'afraid', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 46, 'There arose an argument among them about which of them was the greatest.', 'Luke 9:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'arose', 'argument', 'there', 'among', 'greatest', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 47, 'Jesus, perceiving the reasoning of their hearts, took a little child, and set him by his side,', 'Luke 9:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'jesus', 'hearts', 'took', 'side', 'child', 'perceiving', 'reasoning', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 48, 'and said to them,
“Whoever receives this little child in my name receives me. Whoever receives me receives him who sent me. For whoever is least among you all, this one will be great.”', 'Luke 9:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['name', '“whoever', 'will', 'sent', 'child', 'least', 'this', 'said', 'whoever', 'among']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 49, 'John answered, “Master, we saw someone casting out demons in your name, and we forbade him, because he doesn’t follow with us.”', 'Luke 9:49', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['forbade', 'demons', 'casting', 'john', 'name', 'because', '“master', 'someone', 'your', 'follow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 50, 'Jesus said to him,
“Don’t forbid him, for he who is not against us is for us.”', 'Luke 9:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', '“don’t', 'said', 'against', 'forbid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 51, 'It came to pass, when the days were near that he should be taken up, he intently set his face to go to Jerusalem,', 'Luke 9:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['taken', 'intently', 'face', 'should', 'jerusalem', 'days', 'pass', 'when', 'near', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 52, 'and sent messengers before his face. They went, and entered into a village of the Samaritans, so as to prepare for him.', 'Luke 9:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'face', 'went', 'entered', 'prepare', 'samaritans', 'before', 'sent', 'messengers', 'village']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 53, 'They didn’t receive him, because he was traveling with his face set towards Jerusalem.', 'Luke 9:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'traveling', 'face', 'because', 'towards', 'didn’t', 'receive', 'jerusalem']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 54, 'When his disciples, James and John, saw this, they said, “Lord, do you want us to command fire to come down from the sky, and destroy them, just as Elijah did?”', 'Luke 9:54', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['just', 'want', 'they', 'command', 'fire', 'john', '“lord', 'them', 'james', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 55, 'But he turned and rebuked them,
“You don’t know of what kind of spirit you are.', 'Luke 9:55', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'what', 'know', 'turned', 'rebuked', '“you', 'kind', 'them', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 56, 'For the Son of Man didn’t come to destroy men’s lives, but to save them.”
They went to another village.', 'Luke 9:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'lives', 'save', 'went', 'another', 'men’s', 'didn’t', 'come', 'destroy', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 57, 'As they went on the way, a certain man said to him, “I want to follow you wherever you go, Lord.”', 'Luke 9:57', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['want', 'they', 'went', 'said', 'certain', 'follow', 'lord', 'wherever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 58, 'Jesus said to him,
“The foxes have holes, and the birds of the sky have nests, but the Son of Man has no place to lay his head.”', 'Luke 9:58', 'WEB', ARRAY['General']::TEXT[], ARRAY['holes', 'jesus', 'place', 'birds', 'foxes', 'said', 'have', 'nests', '“the', 'head']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 59, 'He said to another,
“Follow me!”
But he said, “Lord, allow me first to go and bury my father.”', 'Luke 9:59', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['first', '“lord', '“follow', 'another', 'bury', 'said', 'allow', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 60, 'But Jesus said to him,
“Leave the dead to bury their own dead, but you go and announce God’s Kingdom.”', 'Luke 9:60', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['their', 'jesus', 'god’s', 'bury', 'dead', 'said', 'announce', 'kingdom', '“leave']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 61, 'Another also said, “I want to follow you, Lord, but first allow me to say good-bye to those who are at my house.”', 'Luke 9:61', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['first', 'house', 'want', 'another', 'good-bye', 'those', 'said', 'allow', 'also', 'follow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_9}', 62, 'But Jesus said to him,
“No one, having put his hand to the plow, and looking back, is fit for God’s Kingdom.”', 'Luke 9:62', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['jesus', 'god’s', 'back', 'said', 'hand', 'looking', 'plow', 'having', 'kingdom']::TEXT[], NOW());

-- Luke Chapter 10 (42 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 1, 'Now after these things, the Lord also appointed seventy others, and sent them two by two ahead of him into every city and place, where he was about to come.', 'Luke 10:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['seventy', 'things', 'city', 'after', 'appointed', 'these', 'others', 'ahead', 'place', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 2, 'Then he said to them,
“The harvest is indeed plentiful, but the laborers are few. Pray therefore to the Lord of the harvest, that he may send out laborers into his harvest.', 'Luke 10:2', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['plentiful', '“the', 'therefore', 'send', 'pray', 'said', 'harvest', 'indeed', 'that', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 3, 'Go your ways. Behold, I send you out as lambs among wolves.', 'Luke 10:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['send', 'lambs', 'among', 'wolves', 'ways', 'your', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 4, 'Carry no purse, nor wallet, nor sandals. Greet no one on the way.', 'Luke 10:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['wallet', 'purse', 'greet', 'carry', 'sandals']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 5, 'Into whatever house you enter, first say, ‘Peace be to this house.’', 'Luke 10:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', '‘peace', 'first', 'whatever', 'this', 'enter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 6, 'If a son of peace is there, your peace will rest on him; but if not, it will return to you.', 'Luke 10:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['rest', 'return', 'will', 'him;', 'peace', 'there', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 7, 'Remain in that same house, eating and drinking the things they give, for the laborer is worthy of his wages. Don’t go from house to house.', 'Luke 10:7', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['remain', 'house', 'things', 'they', 'drinking', 'give', 'worthy', 'laborer', 'same', 'eating']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 8, 'Into whatever city you enter, and they receive you, eat the things that are set before you.', 'Luke 10:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'things', 'they', 'whatever', 'receive', 'enter', 'that', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 9, 'Heal the sick who are therein, and tell them, ‘God’s Kingdom has come near to you.’', 'Luke 10:9', 'WEB', ARRAY['Kingdom', 'Miracle']::TEXT[], ARRAY['heal', 'therein', 'tell', 'sick', '‘god’s', 'come', 'near', 'them', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 10, 'But into whatever city you enter, and they don’t receive you, go out into its streets and say,', 'Luke 10:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'streets', 'they', 'whatever', 'receive', 'enter', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 11, '‘Even the dust from your city that clings to us, we wipe off against you. Nevertheless know this, that God’s Kingdom has come near to you.’', 'Luke 10:11', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['city', 'dust', 'clings', 'god’s', 'wipe', 'know', 'kingdom', 'this', 'against', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 12, 'I tell you, it will be more tolerable in that day for Sodom than for that city.', 'Luke 10:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['city', 'than', 'sodom', 'tell', 'will', 'tolerable', 'that', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 13, '“Woe to you, Chorazin! Woe to you, Bethsaida! For if the mighty works had been done in Tyre and Sidon which were done in you, they would have repented long ago, sitting in sackcloth and ashes.', 'Luke 10:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'they', 'sitting', 'long', 'were', 'tyre', 'which', 'works', 'mighty', 'sackcloth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 14, 'But it will be more tolerable for Tyre and Sidon in the judgment than for you.', 'Luke 10:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['tyre', 'than', 'sidon', 'will', 'tolerable', 'judgment', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 15, 'You, Capernaum, who are exalted to heaven, will be brought down to Hades.', 'Luke 10:15', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['will', 'hades', 'brought', 'exalted', 'capernaum', 'down', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 16, 'Whoever listens to you listens to me, and whoever rejects you rejects me. Whoever rejects me rejects him who sent me.”', 'Luke 10:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['listens', 'whoever', 'sent', 'rejects']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 17, 'The seventy returned with joy, saying, “Lord, even the demons are subject to us in your name!”', 'Luke 10:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['seventy', 'subject', 'demons', '“lord', 'saying', 'returned', 'name', 'even', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 18, 'He said to them,
“I saw Satan having fallen like lightning from heaven.', 'Luke 10:18', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['fallen', 'said', 'satan', 'having', 'like', 'them', 'heaven', 'lightning']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 19, 'Behold, I give you authority to tread on serpents and scorpions, and over all the power of the enemy. Nothing will in any way hurt you.', 'Luke 10:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'serpents', 'tread', 'give', 'authority', 'will', 'scorpions', 'hurt', 'power', 'nothing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 20, 'Nevertheless, don’t rejoice in this, that the spirits are subject to you, but rejoice that your names are written in heaven.”', 'Luke 10:20', 'WEB', ARRAY['Kingdom', 'Holy Spirit']::TEXT[], ARRAY['subject', 'heaven', 'written', 'rejoice', 'spirits', 'this', 'your', 'nevertheless', 'that', 'names']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 21, 'In that same hour Jesus rejoiced in the Holy Spirit, and said,
“I thank you, O Father, Lord of heaven and earth, that you have hidden these things from the wise and understanding, and revealed them to little children. Yes, Father, for so it was well-pleasing in your sight.”', 'Luke 10:21', 'WEB', ARRAY['Kingdom', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['understanding', 'sight', 'your', 'holy', 'little', 'wise', 'heaven', 'them', 'spirit', 'hidden']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 22, 'Turning to the disciples, he said,
“All things have been delivered to me by my Father. No one knows who the Son is, except the Father, and who the Father is, except the Son, and he to whomever the Son desires to reveal him.”', 'Luke 10:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['whomever', 'things', 'been', 'except', 'desires', 'delivered', 'turning', 'knows', 'reveal', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 23, 'Turning to the disciples, he said privately,
“Blessed are the eyes which see the things that you see,', 'Luke 10:23', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['things', 'privately', 'which', 'turning', 'said', '“blessed', 'that', 'eyes', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 24, 'for I tell you that many prophets and kings desired to see the things which you see, and didn’t see them, and to hear the things which you hear, and didn’t hear them.”', 'Luke 10:24', 'WEB', ARRAY['Kingdom', 'Prophecy']::TEXT[], ARRAY['things', 'tell', 'kings', 'which', 'hear', 'many', 'desired', 'didn’t', 'prophets', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 25, 'Behold, a certain lawyer stood up and tested him, saying, “Teacher, what shall I do to inherit eternal life?”', 'Luke 10:25', 'WEB', ARRAY['Salvation', 'Teaching']::TEXT[], ARRAY['what', 'saying', 'life', 'shall', 'stood', 'lawyer', '“teacher', 'certain', 'behold', 'inherit']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 26, 'He said to him,
“What is written in the law? How do you read it?”', 'Luke 10:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['said', 'written', '“what', 'read']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 27, 'He answered, “You shall love the Lord your God with all your heart, with all your soul, with all your strength, and with all your mind; and your neighbor as yourself.”', 'Luke 10:27', 'WEB', ARRAY['Love']::TEXT[], ARRAY['strength', 'love', 'mind;', 'neighbor', 'shall', 'soul', '“you', 'yourself', 'your', 'heart']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 28, 'He said to him,
“You have answered correctly. Do this, and you will live.”', 'Luke 10:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['correctly', 'will', '“you', 'this', 'said', 'have', 'live', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 29, 'But he, desiring to justify himself, asked Jesus, “Who is my neighbor?”', 'Luke 10:29', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'desiring', 'justify', 'jesus', 'neighbor', 'himself', '“who']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 30, 'Jesus answered,
“A certain man was going down from Jerusalem to Jericho, and he fell among robbers, who both stripped him and beat him, and departed, leaving him half dead.', 'Luke 10:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['jericho', 'going', 'jesus', 'both', 'stripped', 'among', 'fell', 'beat', 'departed', 'certain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 31, 'By chance a certain priest was going down that way. When he saw him, he passed by on the other side.', 'Luke 10:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest', 'passed', 'going', 'side', 'other', 'chance', 'certain', 'when', 'that', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 32, 'In the same way a Levite also, when he came to the place, and saw him, passed by on the other side.', 'Luke 10:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['passed', 'levite', 'side', 'place', 'other', 'same', 'also', 'when', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 33, 'But a certain Samaritan, as he traveled, came where he was. When he saw him, he was moved with compassion,', 'Luke 10:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['compassion', 'certain', 'samaritan', 'when', 'moved', 'traveled', 'where', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 34, 'came to him, and bound up his wounds, pouring on oil and wine. He set him on his own animal, and brought him to an inn, and took care of him.', 'Luke 10:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['animal', 'took', 'bound', 'brought', 'care', 'wounds', 'pouring', 'wine', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 35, 'On the next day, when he departed, he took out two denarii, and gave them to the host, and said to him, ‘Take care of him. Whatever you spend beyond that, I will repay you when I return.’', 'Luke 10:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['denarii', 'beyond', 'gave', 'return', 'whatever', 'host', 'next', 'took', 'will', 'repay']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 36, 'Now which of these three do you think seemed to be a neighbor to him who fell among the robbers?”', 'Luke 10:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['think', 'which', 'neighbor', 'these', 'among', 'fell', 'three', 'robbers', 'seemed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 37, 'He said, “He who showed mercy on him.”
Then Jesus said to him,
“Go and do likewise.”', 'Luke 10:37', 'WEB', ARRAY['Forgiveness', 'Grace']::TEXT[], ARRAY['jesus', 'likewise', 'said', 'showed', 'then', 'mercy']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 38, 'As they went on their way, he entered into a certain village, and a certain woman named Martha received him into her house.', 'Luke 10:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'their', 'they', 'named', 'woman', 'entered', 'went', 'martha', 'received', 'certain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 39, 'She had a sister called Mary, who also sat at Jesus’ feet, and heard his word.', 'Luke 10:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['sister', 'jesus’', 'feet', 'mary', 'word', 'also', 'heard', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 40, 'But Martha was distracted with much serving, and she came up to him, and said, “Lord, don’t you care that my sister left me to serve alone? Ask her therefore to help me.”', 'Luke 10:40', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['help', 'sister', 'therefore', '“lord', 'distracted', 'martha', 'left', 'said', 'care', 'serving']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 41, 'Jesus answered her,
“Martha, Martha, you are anxious and troubled about many things,', 'Luke 10:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', '“martha', 'jesus', 'anxious', 'troubled', 'martha', 'many', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_10}', 42, 'but one thing is needed. Mary has chosen the good part, which will not be taken away from her.”', 'Luke 10:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['thing', 'taken', 'which', 'will', 'chosen', 'mary', 'good', 'needed', 'away', 'part']::TEXT[], NOW());

-- Luke Chapter 11 (54 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 1, 'When he finished praying in a certain place, one of his disciples said to him, “Lord, teach us to pray, just as John also taught his disciples.”', 'Luke 11:1', 'WEB', ARRAY['Prayer', 'Teaching', 'Discipleship']::TEXT[], ARRAY['just', 'praying', 'teach', '“lord', 'john', 'pray', 'taught', 'place', 'finished', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 2, 'He said to them,
“When you pray, say,
‘Our Father in heaven,
may your name be kept holy.
May your Kingdom come.
May your will be done on earth, as it is in heaven.', 'Luke 11:2', 'WEB', ARRAY['Prayer', 'Kingdom', 'Righteousness']::TEXT[], ARRAY['‘our', 'name', 'done', 'pray', 'will', 'holy', 'kingdom', 'said', 'come', 'earth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 3, 'Give us day by day our daily bread.', 'Luke 11:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['give', 'daily', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 4, 'Forgive us our sins,
for we ourselves also forgive everyone who is indebted to us.

Bring us not into temptation,
but deliver us from the evil one.’”', 'Luke 11:4', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['indebted', 'deliver', 'sins', 'temptation', 'ourselves', 'everyone', 'also', 'evil', 'forgive', 'bring']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 5, 'He said to them,
“Which of you, if you go to a friend at midnight, and tell him, ‘Friend, lend me three loaves of bread,', 'Luke 11:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['“which', 'tell', 'loaves', 'lend', '‘friend', 'friend', 'said', 'midnight', 'three', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 6, 'for a friend of mine has come to me from a journey, and I have nothing to set before him,’', 'Luke 11:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['mine', 'friend', 'have', 'come', 'nothing', 'before', 'journey']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 7, 'and he from within will answer and say, ‘Don’t bother me. The door is now shut, and my children are with me in bed. I can’t get up and give it to you’?', 'Luke 11:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'can’t', 'will', 'give', 'bother', 'within', 'you’', '‘don’t', 'door', 'shut']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 8, 'I tell you, although he will not rise and give it to him because he is his friend, yet because of his persistence, he will get up and give him as many as he needs.', 'Luke 11:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['rise', 'tell', 'because', 'will', 'give', 'friend', 'many', 'needs', 'although', 'persistence']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 9, '“I tell you, keep asking, and it will be given you. Keep seeking, and you will find. Keep knocking, and it will be opened to you.', 'Luke 11:9', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['seeking', 'find', 'tell', 'given', 'will', 'opened', 'knocking', 'asking', 'keep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 10, 'For everyone who asks receives. He who seeks finds. To him who knocks it will be opened.', 'Luke 11:10', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['knocks', 'will', 'seeks', 'finds', 'everyone', 'opened', 'asks', 'receives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 11, '“Which of you fathers, if your son asks for bread, will give him a stone? Or if he asks for a fish, he won’t give him a snake instead of a fish, will he?', 'Luke 11:11', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['“which', 'will', 'give', 'stone', 'fathers', 'snake', 'instead', 'your', 'asks', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 12, 'Or if he asks for an egg, he won’t give him a scorpion, will he?', 'Luke 11:12', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['scorpion', 'give', 'will', 'asks', 'won’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 13, 'If you then, being evil, know how to give good gifts to your children, how much more will your heavenly Father give the Holy Spirit to those who ask him?”', 'Luke 11:13', 'WEB', ARRAY['Prayer', 'Kingdom', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'children', 'give', 'will', 'know', 'good', 'those', 'being', 'evil', 'heavenly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 14, 'He was casting out a demon, and it was mute. When the demon had gone out, the mute man spoke; and the multitudes marveled.', 'Luke 11:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['gone', 'casting', 'multitudes', 'marveled', 'demon', 'when', 'mute', 'spoke;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 15, 'But some of them said, “He casts out demons by Beelzebul, the prince of the demons.”', 'Luke 11:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['demons', 'them', 'prince', 'said', 'some', 'casts', 'beelzebul']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 16, 'Others, testing him, sought from him a sign from heaven.', 'Luke 11:16', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['sign', 'testing', 'others', 'heaven', 'sought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 17, 'But he, knowing their thoughts, said to them,
“Every kingdom divided against itself is brought to desolation. A house divided against itself falls.', 'Luke 11:17', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['house', 'their', 'falls', '“every', 'desolation', 'knowing', 'said', 'against', 'brought', 'divided']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 18, 'If Satan also is divided against himself, how will his kingdom stand? For you say that I cast out demons by Beelzebul.', 'Luke 11:18', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['demons', 'will', 'stand', 'himself', 'against', 'also', 'divided', 'that', 'satan', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 19, 'But if I cast out demons by Beelzebul, by whom do your children cast them out? Therefore will they be your judges.', 'Luke 11:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'they', 'demons', 'therefore', 'will', 'judges', 'your', 'them', 'beelzebul', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 20, 'But if I by God’s finger cast out demons, then God’s Kingdom has come to you.', 'Luke 11:20', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['demons', 'finger', 'god’s', 'come', 'then', 'kingdom', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 21, '“When the strong man, fully armed, guards his own dwelling, his goods are safe.', 'Luke 11:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['guards', 'fully', 'goods', 'dwelling', 'safe', '“when', 'strong', 'armed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 22, 'But when someone stronger attacks him and overcomes him, he takes from him his whole armor in which he trusted, and divides his plunder.', 'Luke 11:22', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['armor', 'which', 'stronger', 'attacks', 'trusted', 'divides', 'someone', 'whole', 'when', 'takes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 23, '“He that is not with me is against me. He who doesn’t gather with me scatters.', 'Luke 11:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['gather', 'against', 'scatters', 'that', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 24, 'The unclean spirit, when he has gone out of the man, passes through dry places, seeking rest, and finding none, he says, ‘I will turn back to my house from which I came out.’', 'Luke 11:24', 'WEB', ARRAY['Kingdom', 'Holy Spirit']::TEXT[], ARRAY['house', 'spirit', 'gone', 'seeking', 'unclean', 'rest', 'places', 'none', 'will', 'which']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 25, 'When he returns, he finds it swept and put in order.', 'Luke 11:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['swept', 'finds', 'returns', 'order', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 26, 'Then he goes, and takes seven other spirits more evil than himself, and they enter in and dwell there. The last state of that man becomes worse than the first.”', 'Luke 11:26', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['dwell', 'they', 'last', 'evil', 'then', 'than', 'himself', 'there', 'enter', 'state']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 27, 'It came to pass, as he said these things, a certain woman out of the multitude lifted up her voice, and said to him, “Blessed is the womb that bore you, and the breasts which nursed you!”', 'Luke 11:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['bore', 'things', 'voice', 'breasts', 'woman', 'multitude', 'which', 'nursed', 'these', 'pass']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 28, 'But he said,
“On the contrary, blessed are those who hear the word of God, and keep it.”', 'Luke 11:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['hear', 'word', 'those', 'blessed', 'said', 'contrary', 'keep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 29, 'When the multitudes were gathering together to him, he began to say,
“This is an evil generation. It seeks after a sign. No sign will be given to it but the sign of Jonah, the prophet.', 'Luke 11:29', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['together', 'sign', 'jonah', 'gathering', 'after', 'given', 'will', 'multitudes', 'seeks', 'evil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 30, 'For even as Jonah became a sign to the Ninevites, so will also the Son of Man be to this generation.', 'Luke 11:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['jonah', 'sign', 'will', 'even', 'this', 'generation', 'also', 'ninevites', 'became']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 31, 'The Queen of the South will rise up in the judgment with the men of this generation, and will condemn them: for she came from the ends of the earth to hear the wisdom of Solomon; and behold, one greater than Solomon is here.', 'Luke 11:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['generation', 'rise', 'wisdom', 'than', 'will', 'hear', 'this', 'earth', 'behold', 'judgment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 32, 'The men of Nineveh will stand up in the judgment with this generation, and will condemn it: for they repented at the preaching of Jonah, and behold, one greater than Jonah is here.', 'Luke 11:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['jonah', 'repented', 'they', 'than', 'condemn', 'will', 'stand', 'behold', 'greater', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 33, '“No one, when he has lit a lamp, puts it in a cellar or under a basket, but on a stand, that those who come in may see the light.', 'Luke 11:33', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['under', 'stand', 'light', 'those', 'cellar', 'basket', 'come', 'when', 'that', 'puts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 34, 'The lamp of the body is the eye. Therefore when your eye is good, your whole body is also full of light; but when it is evil, your body also is full of darkness.', 'Luke 11:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['darkness', 'therefore', 'good', 'full', 'light;', 'body', 'whole', 'also', 'your', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 35, 'Therefore see whether the light that is in you isn’t darkness.', 'Luke 11:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'darkness', 'therefore', 'light', 'whether', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 36, 'If therefore your whole body is full of light, having no part dark, it will be wholly full of light, as when the lamp with its bright shining gives you light.”', 'Luke 11:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'shining', 'light', 'will', 'bright', 'gives', 'full', 'body', 'wholly', 'whole']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 37, 'Now as he spoke, a certain Pharisee asked him to dine with him. He went in, and sat at the table.', 'Luke 11:37', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'went', 'pharisee', 'spoke', 'table', 'dine', 'certain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 38, 'When the Pharisee saw it, he marveled that he had not first washed himself before dinner.', 'Luke 11:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'washed', 'pharisee', 'marveled', 'himself', 'when', 'that', 'before', 'dinner']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 39, 'The Lord said to him,
“Now you Pharisees cleanse the outside of the cup and of the platter, but your inward part is full of extortion and wickedness.', 'Luke 11:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['wickedness', 'platter', 'cleanse', 'full', 'outside', 'said', 'inward', 'your', 'part', 'extortion']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 40, 'You foolish ones, didn’t he who made the outside make the inside also?', 'Luke 11:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['foolish', 'make', 'didn’t', 'inside', 'also', 'ones', 'made', 'outside']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 41, 'But give for gifts to the needy those things which are within, and behold, all things will be clean to you.', 'Luke 11:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['needy', 'things', 'clean', 'which', 'give', 'will', 'within', 'those', 'behold', 'gifts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 42, 'But woe to you Pharisees! For you tithe mint and rue and every herb, but you bypass justice and God’s love. You ought to have done these, and not to have left the other undone.', 'Luke 11:42', 'WEB', ARRAY['Love']::TEXT[], ARRAY['undone', 'mint', 'love', 'ought', 'done', 'these', 'god’s', 'justice', 'left', 'other']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 43, 'Woe to you Pharisees! For you love the best seats in the synagogues, and the greetings in the marketplaces.', 'Luke 11:43', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'synagogues', 'seats', 'best', 'greetings', 'marketplaces', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 44, 'Woe to you, scribes and Pharisees, hypocrites! For you are like hidden graves, and the men who walk over them don’t know it.”', 'Luke 11:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'hidden', 'scribes', 'hypocrites', 'know', 'walk', 'graves', 'like', 'them', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 45, 'One of the lawyers answered him, “Teacher, in saying this you insult us also.”', 'Luke 11:45', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['saying', 'lawyers', 'this', '“teacher', 'also', 'insult', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 46, 'He said,
“Woe to you lawyers also! For you load men with burdens that are difficult to carry, and you yourselves won’t even lift one finger to help carry those burdens.', 'Luke 11:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['help', 'load', 'burdens', 'difficult', 'finger', 'lawyers', 'even', 'lift', 'carry', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 47, 'Woe to you! For you build the tombs of the prophets, and your fathers killed them.', 'Luke 11:47', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['them', 'tombs', 'fathers', 'your', 'prophets', 'build', 'killed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 48, 'So you testify and consent to the works of your fathers. For they killed them, and you build their tombs.', 'Luke 11:48', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['they', 'their', 'consent', 'build', 'tombs', 'fathers', 'your', 'works', 'testify', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 49, 'Therefore also the wisdom of God said, ‘I will send to them prophets and apostles; and some of them they will kill and persecute,', 'Luke 11:49', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['wisdom', 'therefore', 'send', 'they', 'will', 'said', 'some', 'also', 'apostles;', 'prophets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 50, 'that the blood of all the prophets, which was shed from the foundation of the world, may be required of this generation;', 'Luke 11:50', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['generation;', 'which', 'this', 'blood', 'shed', 'world', 'prophets', 'that', 'required', 'foundation']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 51, 'from the blood of Abel to the blood of Zachariah, who perished between the altar and the sanctuary.’ Yes, I tell you, it will be required of this generation.', 'Luke 11:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['perished', 'tell', 'altar', 'will', 'zachariah', 'this', 'blood', 'sanctuary', 'required', 'between']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 52, 'Woe to you lawyers! For you took away the key of knowledge. You didn’t enter in yourselves, and those who were entering in, you hindered.”', 'Luke 11:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['knowledge', 'lawyers', 'took', 'didn’t', 'those', 'away', 'hindered', 'enter', 'entering', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 53, 'As he said these things to them, the scribes and the Pharisees began to be terribly angry, and to draw many things out of him;', 'Luke 11:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'scribes', 'these', 'terribly', 'him;', 'many', 'said', 'began', 'draw', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_11}', 54, 'lying in wait for him, and seeking to catch him in something he might say, that they might accuse him.', 'Luke 11:54', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['something', 'might', 'they', 'seeking', 'wait', 'accuse', 'lying', 'that', 'catch']::TEXT[], NOW());

-- Luke Chapter 12 (59 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 1, 'Meanwhile, when a multitude of many thousands had gathered together, so much so that they trampled on each other, he began to tell his disciples first of all,
“Beware of the yeast of the Pharisees, which is hypocrisy.', 'Luke 12:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'multitude', 'trampled', 'thousands', 'yeast', '“beware', 'which', 'gathered', 'much', 'first']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 2, 'But there is nothing covered up, that will not be revealed, nor hidden, that will not be known.', 'Luke 12:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['hidden', 'revealed', 'will', 'known', 'there', 'covered', 'nothing', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 3, 'Therefore whatever you have said in the darkness will be heard in the light. What you have spoken in the ear in the inner rooms will be proclaimed on the housetops.', 'Luke 12:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['darkness', 'therefore', 'whatever', 'what', 'rooms', 'will', 'light', 'spoken', 'housetops', 'inner']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 4, '“I tell you, my friends, don’t be afraid of those who kill the body, and after that have no more that they can do.', 'Luke 12:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'after', 'tell', 'friends', 'those', 'afraid', 'body', 'have', 'that', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 5, 'But I will warn you whom you should fear. Fear him, who after he has killed, has power to cast into Gehenna.
Yes, I tell you, fear him.', 'Luke 12:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['after', 'should', 'tell', 'will', 'warn', 'fear', 'gehenna', 'power', 'killed', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 6, '“Aren’t five sparrows sold for two assaria coins? Not one of them is forgotten by God.', 'Luke 12:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['sold', 'five', 'coins', 'sparrows', 'forgotten', '“aren’t', 'them', 'assaria']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 7, 'But the very hairs of your head are all counted. Therefore don’t be afraid. You are of more value than many sparrows.', 'Luke 12:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['counted', 'than', 'therefore', 'sparrows', 'very', 'don’t', 'afraid', 'many', 'hairs', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 8, '“I tell you, everyone who confesses me before men, him will the Son of Man also confess before the angels of God;', 'Luke 12:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['confess', 'tell', 'will', 'god;', 'everyone', 'also', 'confesses', 'before', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 9, 'but he who denies me in the presence of men will be denied in the presence of the angels of God.', 'Luke 12:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['denies', 'presence', 'will', 'denied', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 10, 'Everyone who speaks a word against the Son of Man will be forgiven, but those who blaspheme against the Holy Spirit will not be forgiven.', 'Luke 12:10', 'WEB', ARRAY['Forgiveness', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'blaspheme', 'will', 'speaks', 'word', 'those', 'everyone', 'against', 'holy', 'forgiven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 11, 'When they bring you before the synagogues, the rulers, and the authorities, don’t be anxious how or what you will answer, or what you will say;', 'Luke 12:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['synagogues', 'they', 'what', 'authorities', 'anxious', 'will', 'say;', 'rulers', 'when', 'answer']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 12, 'for the Holy Spirit will teach you in that same hour what you must say.”', 'Luke 12:12', 'WEB', ARRAY['Teaching', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'teach', 'what', 'will', 'hour', 'same', 'holy', 'that', 'must']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 13, 'One of the multitude said to him, “Teacher, tell my brother to divide the inheritance with me.”', 'Luke 12:13', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['divide', 'tell', 'multitude', 'brother', 'said', '“teacher', 'inheritance']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 14, 'But he said to him,
“Man, who made me a judge or an arbitrator over you?”', 'Luke 12:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'arbitrator', 'judge', 'said', '“man', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 15, 'He said to them,
“Beware! Keep yourselves from covetousness, for a man’s life doesn’t consist of the abundance of the things which he possesses.”', 'Luke 12:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'covetousness', 'consist', 'life', 'which', 'doesn’t', 'abundance', 'said', 'keep', 'possesses']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 16, 'He spoke a parable to them, saying,
“The ground of a certain rich man produced abundantly.', 'Luke 12:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['parable', 'saying', 'ground', 'them', 'spoke', 'certain', 'rich', 'abundantly', '“the', 'produced']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 17, 'He reasoned within himself, saying, ‘What will I do, because I don’t have room to store my crops?’', 'Luke 12:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['saying', 'because', 'will', 'crops', 'himself', 'within', 'room', 'store', '‘what', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 18, 'He said, ‘This is what I will do. I will pull down my barns, and build bigger ones, and there I will store all my grain and my goods.', 'Luke 12:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['grain', 'goods', 'what', '‘this', 'will', 'pull', 'build', 'barns', 'store', 'bigger']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 19, 'I will tell my soul, “Soul, you have many goods laid up for many years. Take your ease, eat, drink, be merry.”’', 'Luke 12:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['years', 'goods', 'tell', 'ease', 'will', 'take', 'drink', 'soul', '“soul', 'many']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 20, '“But God said to him, ‘You foolish one, tonight your soul is required of you. The things which you have prepared—whose will they be?’', 'Luke 12:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['foolish', 'things', 'they', 'which', '“but', 'prepared—whose', 'will', 'soul', 'tonight', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 21, 'So is he who lays up treasure for himself, and is not rich toward God.”', 'Luke 12:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['himself', 'toward', 'lays', 'rich', 'treasure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 22, 'He said to his disciples,
“Therefore I tell you, don’t be anxious for your life, what you will eat, nor yet for your body, what you will wear.', 'Luke 12:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['wear', 'what', '“therefore', 'tell', 'disciples', 'life', 'anxious', 'will', 'body', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 23, 'Life is more than food, and the body is more than clothing.', 'Luke 12:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['than', 'life', 'food', 'body', 'clothing', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 24, 'Consider the ravens: they don’t sow, they don’t reap, they have no warehouse or barn, and God feeds them. How much more valuable are you than birds!', 'Luke 12:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['ravens:', 'they', 'feeds', 'barn', 'than', 'more', 'reap', 'birds', 'have', 'valuable']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 25, 'Which of you by being anxious can add a cubit to his height?', 'Luke 12:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['height', 'which', 'anxious', 'being', 'cubit']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 26, 'If then you aren’t able to do even the least things, why are you anxious about the rest?', 'Luke 12:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'rest', 'aren’t', 'anxious', 'even', 'least', 'then', 'able']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 27, 'Consider the lilies, how they grow. They don’t toil, neither do they spin; yet I tell you, even Solomon in all his glory was not arrayed like one of these.', 'Luke 12:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['arrayed', 'they', 'tell', 'these', 'even', 'toil', 'grow', 'lilies', 'neither', 'consider']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 28, 'But if this is how God clothes the grass in the field, which today exists, and tomorrow is cast into the oven, how much more will he clothe you, O you of little faith?', 'Luke 12:28', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['clothes', 'exists', 'much', 'which', 'will', 'faith', 'field', 'this', 'little', 'today']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 29, 'Don’t seek what you will eat or what you will drink; neither be anxious.', 'Luke 12:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'seek', 'will', 'anxious', 'neither', 'drink;', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 30, 'For the nations of the world seek after all of these things, but your Father knows that you need these things.', 'Luke 12:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'need', 'after', 'seek', 'nations', 'these', 'knows', 'that', 'your', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 31, 'But seek God’s Kingdom, and all these things will be added to you.', 'Luke 12:31', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['things', 'seek', 'these', 'god’s', 'will', 'added', 'kingdom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 32, 'Don’t be afraid, little flock, for it is your Father’s good pleasure to give you the Kingdom.', 'Luke 12:32', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['flock', 'father’s', 'give', 'good', 'kingdom', 'afraid', 'pleasure', 'your', 'little', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 33, 'Sell that which you have, and give gifts to the needy. Make for yourselves purses which don’t grow old, a treasure in the heavens that doesn’t fail, where no thief approaches, neither moth destroys.', 'Luke 12:33', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['give', 'fail', 'don’t', 'grow', 'doesn’t', 'thief', 'which', 'neither', 'heavens', 'moth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 34, 'For where your treasure is, there will your heart be also.', 'Luke 12:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'there', 'also', 'your', 'heart', 'where', 'treasure']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 35, '“Let your waist be dressed and your lamps burning.', 'Luke 12:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['lamps', '“let', 'burning', 'your', 'dressed', 'waist']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 36, 'Be like men watching for their lord, when he returns from the marriage feast; that, when he comes and knocks, they may immediately open to him.', 'Luke 12:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'knocks', 'they', 'comes', 'returns', 'immediately', 'open', 'that', 'when', 'watching']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 37, 'Blessed are those servants, whom the lord will find watching when he comes. Most certainly I tell you, that he will dress himself, and make them recline, and will come and serve them.', 'Luke 12:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'those', 'dress', 'them', 'certainly', 'whom', 'serve', 'find', 'will', 'himself']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 38, 'They will be blessed if he comes in the second or third watch, and finds them so.', 'Luke 12:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'will', 'comes', 'watch', 'finds', 'blessed', 'second', 'third', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 39, 'But know this, that if the master of the house had known in what hour the thief was coming, he would have watched, and not allowed his house to be broken into.', 'Luke 12:39', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['house', 'broken', 'what', 'allowed', 'coming', 'would', 'hour', 'know', 'known', 'thief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 40, 'Therefore be ready also, for the Son of Man is coming in an hour that you don’t expect him.”', 'Luke 12:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'coming', 'hour', 'ready', 'also', 'that', 'don’t', 'expect']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 41, 'Peter said to him, “Lord, are you telling this parable to us, or to everybody?”', 'Luke 12:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['“lord', 'parable', 'everybody', 'peter', 'this', 'said', 'telling']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 42, 'The Lord said,
“Who then is the faithful and wise steward, whom his lord will set over his household, to give them their portion of food at the right times?', 'Luke 12:42', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['over', 'their', 'portion', 'steward', 'times', 'will', 'give', 'them', 'faithful', 'food']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 43, 'Blessed is that servant whom his lord will find doing so when he comes.', 'Luke 12:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['find', 'will', 'comes', 'blessed', 'servant', 'when', 'that', 'doing', 'lord', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 44, 'Truly I tell you, that he will set him over all that he has.', 'Luke 12:44', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['over', 'tell', 'will', 'truly', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 45, 'But if that servant says in his heart, ‘My lord delays his coming,’ and begins to beat the menservants and the maidservants, and to eat and drink, and to be drunken,', 'Luke 12:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['begins', 'delays', 'coming', 'maidservants', 'drunken', 'drink', 'beat', 'menservants', 'servant', 'says']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 46, 'then the lord of that servant will come in a day when he isn’t expecting him, and in an hour that he doesn’t know, and will cut him in two, and place his portion with the unfaithful.', 'Luke 12:46', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['isn’t', 'portion', 'unfaithful', 'will', 'hour', 'know', 'place', 'come', 'servant', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 47, 'That servant, who knew his lord’s will, and didn’t prepare, nor do what he wanted, will be beaten with many stripes,', 'Luke 12:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['wanted', 'knew', 'what', 'will', 'beaten', 'stripes', 'didn’t', 'many', 'servant', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 48, 'but he who didn’t know, and did things worthy of stripes, will be beaten with few stripes. To whomever much is given, of him will much be required; and to whom much was entrusted, of him more will be asked.', 'Luke 12:48', 'WEB', ARRAY['Faith', 'Prayer']::TEXT[], ARRAY['things', 'asked', 'given', 'worthy', 'will', 'stripes', 'know', 'beaten', 'entrusted', 'didn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 49, '“I came to throw fire on the earth. I wish it were already kindled.', 'Luke 12:49', 'WEB', ARRAY['General']::TEXT[], ARRAY['fire', 'already', 'throw', 'earth', 'kindled', 'wish', 'came', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 50, 'But I have a baptism to be baptized with, and how distressed I am until it is accomplished!', 'Luke 12:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['baptized', 'distressed', 'until', 'have', 'accomplished', 'baptism']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 51, 'Do you think that I have come to give peace in the earth? I tell you, no, but rather division.', 'Luke 12:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['division', 'think', 'tell', 'give', 'peace', 'earth', 'have', 'come', 'that', 'rather']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 52, 'For from now on, there will be five in one house divided, three against two, and two against three.', 'Luke 12:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['five', 'house', 'will', 'there', 'against', 'divided', 'three']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 53, 'They will be divided, father against son, and son against father; mother against daughter, and daughter against her mother; mother-in-law against her daughter-in-law, and daughter-in-law against her mother-in-law.”', 'Luke 12:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'father;', 'mother-in-law', 'mother', 'daughter-in-law', 'mother;', 'will', 'daughter', 'against', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 54, 'He said to the multitudes also, “When you see a cloud rising from the west, immediately you say, ‘A shower is coming,’ and so it happens.', 'Luke 12:54', 'WEB', ARRAY['General']::TEXT[], ARRAY['happens', 'west', 'coming', 'cloud', 'multitudes', 'said', 'immediately', 'also', 'rising', '“when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 55, 'When a south wind blows, you say, ‘There will be a scorching heat,’ and it happens.', 'Luke 12:55', 'WEB', ARRAY['General']::TEXT[], ARRAY['happens', 'wind', 'will', '‘there', 'heat', 'blows', 'when', 'south', 'scorching']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 56, 'You hypocrites! You know how to interpret the appearance of the earth and the sky, but how is it that you don’t interpret this time?', 'Luke 12:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['appearance', 'time', 'know', 'earth', 'this', 'that', 'hypocrites', 'don’t', 'interpret']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 57, 'Why don’t you judge for yourselves what is right?', 'Luke 12:57', 'WEB', ARRAY['General']::TEXT[], ARRAY['judge', 'what', 'right', 'don’t', 'yourselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 58, 'For when you are going with your adversary before the magistrate, try diligently on the way to be released from him, lest perhaps he drag you to the judge, and the judge deliver you to the officer, and the officer throw you into prison.', 'Luke 12:58', 'WEB', ARRAY['General']::TEXT[], ARRAY['officer', 'deliver', 'judge', 'prison', 'going', 'magistrate', 'adversary', 'diligently', 'lest', 'throw']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (3, '{CHAPTER_UUID_Luke_12}', 59, 'I tell you, you will by no means get out of there, until you have paid the very last penny.”', 'Luke 12:59', 'WEB', ARRAY['General']::TEXT[], ARRAY['means', 'tell', 'will', 'until', 'very', 'there', 'have', 'penny', 'last', 'paid']::TEXT[], NOW());

-- John Chapter 6 (71 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 1, 'After these things, Jesus went away to the other side of the sea of Galilee, which is also called the Sea of Tiberias.', 'John 6:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'after', 'went', 'which', 'jesus', 'these', 'tiberias', 'side', 'other', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 2, 'A great multitude followed him, because they saw his signs which he did on those who were sick.', 'John 6:2', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'they', 'multitude', 'because', 'which', 'sick', 'those', 'signs', 'great', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 3, 'Jesus went up into the mountain, and he sat there with his disciples.', 'John 6:3', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['went', 'jesus', 'mountain', 'there', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 4, 'Now the Passover, the feast of the Jews, was at hand.', 'John 6:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['passover', 'hand', 'feast', 'jews']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 5, 'Jesus therefore lifting up his eyes, and seeing that a great multitude was coming to him, said to Philip,
“Where are we to buy bread, that these may eat?”', 'John 6:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'multitude', 'coming', 'jesus', '“where', 'these', 'lifting', 'seeing', 'said', 'great']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 6, 'This he said to test him, for he himself knew what he would do.', 'John 6:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['knew', 'what', 'would', 'himself', 'this', 'test', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 7, 'Philip answered him, “Two hundred denarii worth of bread is not sufficient for them, that everyone of them may receive a little.”', 'John 6:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['sufficient', 'denarii', 'hundred', '“two', 'everyone', 'that', 'receive', 'little', 'philip', 'worth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 8, 'One of his disciples, Andrew, Simon Peter’s brother, said to him,', 'John 6:8', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['brother', 'said', 'simon', 'andrew', 'disciples', 'peter’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 9, '“There is a boy here who has five barley loaves and two fish, but what are these among so many?”', 'John 6:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['five', '“there', 'what', 'loaves', 'barley', 'these', 'many', 'among', 'fish', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 10, 'Jesus said,
“Have the people sit down.” Now there was much grass in that place. So the men sat down, in number about five thousand.', 'John 6:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['five', 'grass', 'number', 'thousand', 'jesus', 'place', 'there', 'said', 'that', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 11, 'Jesus took the loaves; and having given thanks, he distributed to the disciples, and the disciples to those who were sitting down; likewise also of the fish as much as they desired.', 'John 6:11', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'much', 'jesus', 'given', 'took', 'sitting', 'down;', 'likewise', 'distributed', 'those']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 12, 'When they were filled, he said to his disciples,
“Gather up the broken pieces which are left over, that nothing be lost.”', 'John 6:12', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['over', 'lost', 'they', 'broken', '“gather', 'which', 'filled', 'left', 'said', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 13, 'So they gathered them up, and filled twelve baskets with broken pieces from the five barley loaves, which were left over by those who had eaten.', 'John 6:13', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['five', 'over', 'they', 'broken', 'eaten', 'which', 'barley', 'loaves', 'filled', 'baskets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 14, 'When therefore the people saw the sign which Jesus did, they said, “This is truly the prophet who comes into the world.”', 'John 6:14', 'WEB', ARRAY['Prophecy', 'Truth']::TEXT[], ARRAY['sign', 'they', 'therefore', 'which', 'jesus', 'comes', 'said', 'truly', 'when', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 15, 'Jesus therefore, perceiving that they were about to come and take him by force, to make him king, withdrew again to the mountain by himself.', 'John 6:15', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['withdrew', 'they', 'therefore', 'jesus', 'take', 'force', 'himself', 'make', 'king', 'mountain']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 16, 'When evening came, his disciples went down to the sea,', 'John 6:16', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['went', 'evening', 'when', 'down', 'disciples', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 17, 'and they entered into the boat, and were going over the sea to Capernaum. It was now dark, and Jesus had not come to them.', 'John 6:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['over', 'they', 'going', 'entered', 'jesus', 'them', 'dark', 'come', 'boat', 'capernaum']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 18, 'The sea was tossed by a great wind blowing.', 'John 6:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['wind', 'great', 'blowing', 'tossed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 19, 'When therefore they had rowed about twenty-five or thirty stadia,
 they saw Jesus walking on the sea, and drawing near to the boat; and they were afraid.', 'John 6:19', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'therefore', 'walking', 'jesus', 'rowed', 'twenty-five', 'thirty', 'afraid', 'stadia', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 20, 'But he said to them,
“It is I.
Don’t be afraid.”', 'John 6:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['afraid', 'said', 'them', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 21, 'They were willing therefore to receive him into the boat. Immediately the boat was at the land where they were going.', 'John 6:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', 'land', 'going', 'immediately', 'receive', 'boat', 'where', 'willing', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 22, 'On the next day, the multitude that stood on the other side of the sea saw that there was no other boat there, except the one in which his disciples had embarked, and that Jesus hadn’t entered with his disciples into the boat, but his disciples had gone away alone.', 'John 6:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['gone', 'embarked', 'multitude', 'except', 'which', 'next', 'jesus', 'side', 'stood', 'entered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 23, 'However boats from Tiberias came near to the place where they ate the bread after the Lord had given thanks.', 'John 6:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'after', 'tiberias', 'given', 'lord', 'place', 'however', 'thanks', 'near', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 24, 'When the multitude therefore saw that Jesus wasn’t there, nor his disciples, they themselves got into the boats, and came to Capernaum, seeking Jesus.', 'John 6:24', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['they', 'therefore', 'seeking', 'multitude', 'jesus', 'wasn’t', 'there', 'when', 'capernaum', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 25, 'When they found him on the other side of the sea, they asked him, “Rabbi, when did you come here?”', 'John 6:25', 'WEB', ARRAY['Prayer', 'Teaching']::TEXT[], ARRAY['found', 'asked', 'they', '“rabbi', 'side', 'other', 'come', 'when', 'here']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 26, 'Jesus answered them,
“Most certainly I tell you, you seek me, not because you saw signs, but because you ate of the loaves, and were filled.', 'John 6:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['seek', 'tell', 'because', 'jesus', 'loaves', 'filled', '“most', 'signs', 'them', 'certainly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 27, 'Don’t work for the food which perishes, but for the food which remains to eternal life, which the Son of Man will give to you. For God the Father has sealed him.”', 'John 6:27', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['which', 'life', 'will', 'give', 'remains', 'work', 'food', 'sealed', 'perishes', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 28, 'They said therefore to him, “What must we do, that we may work the works of God?”', 'John 6:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', '“what', 'therefore', 'work', 'said', 'works', 'that', 'must']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 29, 'Jesus answered them,
“This is the work of God, that you believe in him whom he has sent.”', 'John 6:29', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['believe', 'jesus', 'whom', 'work', 'that', '“this', 'sent', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 30, 'They said therefore to him, “What then do you do for a sign, that we may see, and believe you? What work do you do?', 'John 6:30', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['sign', 'they', '“what', 'therefore', 'believe', 'what', 'work', 'said', 'that', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 31, 'Our fathers ate the manna in the wilderness. As it is written, ‘He gave them bread out of heaven to eat.’”', 'John 6:31', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['written', 'manna', 'wilderness', 'gave', 'fathers', 'bread', 'them', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 32, 'Jesus therefore said to them,
“Most certainly, I tell you, it wasn’t Moses who gave you the bread out of heaven, but my Father gives you the true bread out of heaven.', 'John 6:32', 'WEB', ARRAY['Kingdom', 'Truth']::TEXT[], ARRAY['gave', 'therefore', 'tell', 'jesus', 'gives', '“most', 'wasn’t', 'said', 'true', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 33, 'For the bread of God is that which comes down out of heaven, and gives life to the world.”', 'John 6:33', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['which', 'life', 'comes', 'gives', 'world', 'that', 'bread', 'down', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 34, 'They said therefore to him, “Lord, always give us this bread.”', 'John 6:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', '“lord', 'give', 'this', 'said', 'always', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 35, 'Jesus said to them,
“I am the bread of life. He who comes to me will not be hungry, and he who believes in me will never be thirsty.', 'John 6:35', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['hungry', 'life', 'jesus', 'comes', 'will', 'never', 'thirsty', 'believes', 'said', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 36, 'But I told you that you have seen me, and yet you don’t believe.', 'John 6:36', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['seen', 'have', 'told', 'that', 'believe', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 37, 'All those whom the Father gives me will come to me. He who comes to me I will in no way throw out.', 'John 6:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'comes', 'gives', 'those', 'throw', 'come', 'father', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 38, 'For I have come down from heaven, not to do my own will, but the will of him who sent me.', 'John 6:38', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['will', 'have', 'come', 'sent', 'down', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 39, 'This is the will of my Father who sent me, that of all he has given to me I should lose nothing, but should raise him up at the last day.', 'John 6:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['should', 'lose', 'given', 'will', 'raise', 'this', 'father', 'last', 'nothing', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 40, 'This is the will of the one who sent me, that everyone who sees the Son, and believes in him, should have eternal life; and I will raise him up at the last day.”', 'John 6:40', 'WEB', ARRAY['Faith', 'Salvation']::TEXT[], ARRAY['should', 'raise', 'will', 'believes', 'this', 'everyone', 'have', 'sees', 'last', 'life;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 41, 'The Jews therefore murmured concerning him, because he said,
“I am the bread which came down out of heaven.”', 'John 6:41', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['therefore', 'jews', 'because', 'which', 'down', 'murmured', 'said', 'bread', 'concerning', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 42, 'They said, “Isn’t this Jesus, the son of Joseph, whose father and mother we know? How then does he say,
‘I have come down out of heaven?’”', 'John 6:42', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['“isn’t', 'they', 'does', 'joseph', 'mother', 'jesus', 'whose', 'know', 'this', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 43, 'Therefore Jesus answered them,
“Don’t murmur among yourselves.', 'John 6:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'jesus', '“don’t', 'yourselves', 'among', 'murmur', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 44, 'No one can come to me unless the Father who sent me draws him, and I will raise him up in the last day.', 'John 6:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['unless', 'raise', 'will', 'come', 'father', 'last', 'draws', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 45, 'It is written in the prophets, ‘They will all be taught by God.’


Therefore everyone who hears from the Father, and has learned, comes to me.', 'John 6:45', 'WEB', ARRAY['Teaching', 'Prophecy']::TEXT[], ARRAY['written', 'therefore', 'will', 'taught', 'comes', '‘they', 'everyone', 'learned', 'father', 'prophets']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 46, 'Not that anyone has seen the Father, except he who is from God. He has seen the Father.', 'John 6:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'seen', 'except', 'father', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 47, 'Most certainly, I tell you, he who believes in me has eternal life.', 'John 6:47', 'WEB', ARRAY['Faith', 'Salvation']::TEXT[], ARRAY['most', 'tell', 'life', 'believes', 'certainly', 'eternal']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 48, 'I am the bread of life.', 'John 6:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['life', 'bread']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 49, 'Your fathers ate the manna in the wilderness, and they died.', 'John 6:49', 'WEB', ARRAY['General']::TEXT[], ARRAY['manna', 'they', 'wilderness', 'died', 'fathers', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 50, 'This is the bread which comes down out of heaven, that anyone may eat of it and not die.', 'John 6:50', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['anyone', 'which', 'comes', 'this', 'that', 'bread', 'down', 'heaven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 51, 'I am the living bread which came down out of heaven. If anyone eats of this bread, he will live forever. Yes, the bread which I will give for the life of the world is my flesh.”', 'John 6:51', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['eats', 'anyone', 'which', 'life', 'will', 'forever', 'give', 'flesh', 'this', 'live']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 52, 'The Jews therefore contended with one another, saying, “How can this man give us his flesh to eat?”', 'John 6:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'jews', 'saying', 'another', 'contended', 'give', 'flesh', 'this', '“how']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 53, 'Jesus therefore said to them,
“Most certainly I tell you, unless you eat the flesh of the Son of Man and drink his blood, you don’t have life in yourselves.', 'John 6:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['unless', 'therefore', 'tell', 'life', 'jesus', 'drink', '“most', 'flesh', 'don’t', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 54, 'He who eats my flesh and drinks my blood has eternal life, and I will raise him up at the last day.', 'John 6:54', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['eats', 'drinks', 'life', 'raise', 'will', 'flesh', 'blood', 'last', 'eternal']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 55, 'For my flesh is food indeed, and my blood is drink indeed.', 'John 6:55', 'WEB', ARRAY['General']::TEXT[], ARRAY['drink', 'flesh', 'food', 'blood', 'indeed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 56, 'He who eats my flesh and drinks my blood lives in me, and I in him.', 'John 6:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['eats', 'drinks', 'lives', 'flesh', 'blood']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 57, 'As the living Father sent me, and I live because of the Father; so he who feeds on me, he will also live because of me.', 'John 6:57', 'WEB', ARRAY['General']::TEXT[], ARRAY['father;', 'feeds', 'because', 'will', 'live', 'also', 'father', 'living', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 58, 'This is the bread which came down out of heaven—not as our fathers ate the manna, and died. He who eats this bread will live forever.”', 'John 6:58', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['eats', 'manna', 'which', 'will', 'forever', 'died', 'this', 'fathers', 'live', 'heaven—not']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 59, 'He said these things in the synagogue, as he taught in Capernaum.', 'John 6:59', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['things', 'these', 'taught', 'said', 'capernaum', 'synagogue']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 60, 'Therefore many of his disciples, when they heard this, said, “This is a hard saying! Who can listen to it?”', 'John 6:60', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['hard', 'they', 'therefore', 'saying', 'many', 'this', 'said', 'listen', 'when', 'heard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 61, 'But Jesus knowing in himself that his disciples murmured at this, said to them,
“Does this cause you to stumble?', 'John 6:61', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['“does', 'cause', 'jesus', 'murmured', 'himself', 'stumble', 'knowing', 'this', 'said', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 62, 'Then what if you would see the Son of Man ascending to where he was before?', 'John 6:62', 'WEB', ARRAY['General']::TEXT[], ARRAY['ascending', 'what', 'would', 'before', 'then', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 63, 'It is the spirit who gives life. The flesh profits nothing. The words that I speak to you are spirit, and are life.', 'John 6:63', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'life', 'profits', 'gives', 'flesh', 'words', 'nothing', 'that', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 64, 'But there are some of you who don’t believe.” For Jesus knew from the beginning who they were who didn’t believe, and who it was who would betray him.', 'John 6:64', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'knew', 'beginning', 'jesus', 'would', 'didn’t', 'there', 'some', 'believe', 'betray']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 65, 'He said,
“For this cause I have said to you that no one can come to me, unless it is given to him by my Father.”', 'John 6:65', 'WEB', ARRAY['General']::TEXT[], ARRAY['unless', 'cause', 'given', 'this', 'said', 'have', '“for', 'come', 'father', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 66, 'At this, many of his disciples went back, and walked no more with him.', 'John 6:66', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['went', 'many', 'this', 'back', 'disciples', 'more', 'walked']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 67, 'Jesus said therefore to the twelve,
“You don’t also want to go away, do you?”', 'John 6:67', 'WEB', ARRAY['General']::TEXT[], ARRAY['want', 'therefore', 'jesus', '“you', 'said', 'away', 'also', 'twelve', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 68, 'Simon Peter answered him, “Lord, to whom would we go? You have the words of eternal life.', 'John 6:68', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['answered', '“lord', 'life', 'would', 'peter', 'eternal', 'have', 'words', 'simon', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 69, 'We have come to believe and know that you are the Christ, the Son of the living God.”', 'John 6:69', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['know', 'have', 'come', 'living', 'that', 'believe', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 70, 'Jesus answered them,
“Didn’t I choose you, the twelve, and one of you is a devil?”', 'John 6:70', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'choose', '“didn’t', 'twelve', 'them', 'devil', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_6}', 71, 'Now he spoke of Judas, the son of Simon Iscariot, for it was he who would betray him, being one of the twelve.', 'John 6:71', 'WEB', ARRAY['General']::TEXT[], ARRAY['iscariot', 'judas', 'would', 'spoke', 'being', 'simon', 'twelve', 'betray']::TEXT[], NOW());

-- John Chapter 7 (53 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 1, 'After these things, Jesus was walking in Galilee, for he wouldn’t walk in Judea, because the Jews sought to kill him.', 'John 7:1', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['things', 'after', 'walking', 'because', 'jesus', 'these', 'jews', 'walk', 'judea', 'galilee']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 2, 'Now the feast of the Jews, the Feast of Booths, was at hand.', 'John 7:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['hand', 'booths', 'feast', 'jews']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 3, 'His brothers therefore said to him, “Depart from here, and go into Judea, that your disciples also may see your works which you do.', 'John 7:3', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['therefore', '“depart', 'which', 'judea', 'said', 'also', 'your', 'brothers', 'works', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 4, 'For no one does anything in secret, and himself seeks to be known openly. If you do these things, reveal yourself to the world.”', 'John 7:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'openly', 'does', 'secret', 'these', 'seeks', 'himself', 'known', 'reveal', 'yourself']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 5, 'For even his brothers didn’t believe in him.', 'John 7:5', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['didn’t', 'believe', 'brothers', 'even']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 6, 'Jesus therefore said to them,
“My time has not yet come, but your time is always ready.', 'John 7:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'therefore', 'jesus', 'ready', 'said', 'come', 'your', 'always', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 7, 'The world can’t hate you, but it hates me, because I testify about it, that its works are evil.', 'John 7:7', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['hate', 'because', 'can’t', 'that', 'works', 'testify', 'world', 'evil', 'hates']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 8, 'You go up to the feast. I am not yet going up to this feast, because my time is not yet fulfilled.”', 'John 7:8', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['time', 'going', 'because', 'fulfilled', 'feast', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 9, 'Having said these things to them, he stayed in Galilee.', 'John 7:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'these', 'stayed', 'galilee', 'said', 'having', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 10, 'But when his brothers had gone up to the feast, then he also went up, not publicly, but as it were in secret.', 'John 7:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['gone', 'went', 'secret', 'feast', 'also', 'brothers', 'when', 'publicly', 'then', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 11, 'The Jews therefore sought him at the feast, and said, “Where is he?”', 'John 7:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'jews', '“where', 'feast', 'said', 'sought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 12, 'There was much murmuring among the multitudes concerning him. Some said, “He is a good man.” Others said, “Not so, but he leads the multitude astray.”', 'John 7:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['leads', 'murmuring', '“not', 'multitude', 'multitudes', 'good', 'others', 'there', 'among', 'some']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 13, 'Yet no one spoke openly of him for fear of the Jews.', 'John 7:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['fear', 'openly', 'jews', 'spoke']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 14, 'But when it was now the middle of the feast, Jesus went up into the temple and taught.', 'John 7:14', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['went', 'jesus', 'taught', 'feast', 'temple', 'when', 'middle']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 15, 'The Jews therefore marveled, saying, “How does this man know letters, having never been educated?”', 'John 7:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'therefore', 'does', 'jews', 'saying', 'never', 'marveled', 'know', 'this', 'educated']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 16, 'Jesus therefore answered them,
“My teaching is not mine, but his who sent me.', 'John 7:16', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['therefore', 'mine', 'teaching', 'jesus', 'sent', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 17, 'If anyone desires to do his will, he will know about the teaching, whether it is from God, or if I am speaking from myself.', 'John 7:17', 'WEB', ARRAY['Kingdom', 'Teaching']::TEXT[], ARRAY['anyone', 'teaching', 'desires', 'will', 'know', 'myself', 'whether', 'speaking']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 18, 'He who speaks from himself seeks his own glory, but he who seeks the glory of him who sent him is true, and no unrighteousness is in him.', 'John 7:18', 'WEB', ARRAY['Righteousness', 'Truth']::TEXT[], ARRAY['seeks', 'himself', 'speaks', 'true', 'sent', 'glory', 'unrighteousness']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 19, 'Didn’t Moses give you the law, and yet none of you keeps the law? Why do you seek to kill me?”', 'John 7:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['seek', 'none', 'give', 'didn’t', 'keeps', 'moses', 'kill']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 20, 'The multitude answered, “You have a demon! Who seeks to kill you?”', 'John 7:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['multitude', 'seeks', 'demon', '“you', 'have', 'kill', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 21, 'Jesus answered them,
“I did one work, and you all marvel because of it.', 'John 7:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['because', 'jesus', 'work', 'marvel', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 22, 'Moses has given you circumcision (not that it is of Moses, but of the fathers), and on the Sabbath you circumcise a boy.', 'John 7:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['fathers)', 'given', 'circumcise', '(not', 'that', 'moses', 'circumcision', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 23, 'If a boy receives circumcision on the Sabbath, that the law of Moses may not be broken, are you angry with me, because I made a man completely healthy on the Sabbath?', 'John 7:23', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['made', 'broken', 'angry', 'because', 'completely', 'healthy', 'that', 'receives', 'moses', 'circumcision']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 24, 'Don’t judge according to appearance, but judge righteous judgment.”', 'John 7:24', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['appearance', 'judge', 'don’t', 'righteous', 'judgment', 'according']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 25, 'Therefore some of them of Jerusalem said, “Isn’t this he whom they seek to kill?', 'John 7:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['“isn’t', 'therefore', 'they', 'seek', 'this', 'said', 'some', 'jerusalem', 'them', 'kill']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 26, 'Behold, he speaks openly, and they say nothing to him. Can it be that the rulers indeed know that this is truly the Christ?', 'John 7:26', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['they', 'openly', 'speaks', 'behold', 'rulers', 'know', 'this', 'truly', 'indeed', 'nothing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 27, 'However we know where this man comes from, but when the Christ comes, no one will know where he comes from.”', 'John 7:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['comes', 'will', 'know', 'this', 'however', 'when', 'where', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 28, 'Jesus therefore cried out in the temple, teaching and saying,
“You both know me, and know where I am from. I have not come of myself, but he who sent me is true, whom you don’t know.', 'John 7:28', 'WEB', ARRAY['Teaching', 'Truth']::TEXT[], ARRAY['therefore', 'teaching', 'saying', 'jesus', 'know', 'myself', 'temple', '“you', 'both', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 29, 'I know him, because I am from him, and he sent me.”', 'John 7:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['sent', 'know', 'because']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 30, 'They sought therefore to take him; but no one laid a hand on him, because his hour had not yet come.', 'John 7:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['laid', 'they', 'therefore', 'because', 'take', 'hour', 'him;', 'hand', 'come', 'sought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 31, 'But of the multitude, many believed in him. They said, “When the Christ comes, he won’t do more signs than those which this man has done, will he?”', 'John 7:31', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'than', 'multitude', 'more', 'which', 'comes', 'done', 'will', 'many', 'those']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 32, 'The Pharisees heard the multitude murmuring these things concerning him, and the chief priests and the Pharisees sent officers to arrest him.', 'John 7:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['murmuring', 'things', 'officers', 'multitude', 'these', 'priests', 'arrest', 'heard', 'sent', 'concerning']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 33, 'Then Jesus said,
“I will be with you a little while longer, then I go to him who sent me.', 'John 7:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'will', 'sent', 'said', 'while', 'longer', 'then', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 34, 'You will seek me, and won’t find me; and where I am, you can’t come.”', 'John 7:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['find', 'seek', 'can’t', 'will', 'come', 'where', 'won’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 35, 'The Jews therefore said among themselves, “Where will this man go that we won’t find him? Will he go to the Dispersion among the Greeks, and teach the Greeks?', 'John 7:35', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['teach', 'therefore', 'greeks', 'jews', 'find', '“where', 'dispersion', 'will', 'among', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 36, 'What is this word that he said,
‘You will seek me, and won’t find me; and where I am, you can’t come’?”', 'John 7:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'seek', 'find', 'can’t', 'will', 'word', 'this', 'said', 'that', 'come’']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 37, 'Now on the last and greatest day of the feast, Jesus stood and cried out,
“If anyone is thirsty, let him come to me and drink!', 'John 7:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'jesus', 'drink', 'stood', 'feast', 'thirsty', 'come', 'last', 'greatest', 'cried']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 38, 'He who believes in me, as the Scripture has said, from within him will flow rivers of living water.”', 'John 7:38', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['will', 'within', 'believes', 'rivers', 'said', 'living', 'water', 'flow', 'scripture']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 39, 'But he said this about the Spirit, which those believing in him were to receive. For the Holy Spirit was not yet given, because Jesus wasn’t yet glorified.', 'John 7:39', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'because', 'which', 'believing', 'given', 'jesus', 'wasn’t', 'those', 'this', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 40, 'Many of the multitude therefore, when they heard these words, said, “This is truly the prophet.”', 'John 7:40', 'WEB', ARRAY['Prophecy', 'Truth']::TEXT[], ARRAY['they', 'therefore', 'multitude', 'these', 'many', 'said', 'truly', 'words', 'when', 'heard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 41, 'Others said, “This is the Christ.” But some said, “What, does the Christ come out of Galilee?', 'John 7:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['“what', 'does', 'others', 'galilee', 'said', 'some', 'come', '“this', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 42, 'Hasn’t the Scripture said that the Christ comes of the offspring of David,
 and from Bethlehem, the village where David was?”', 'John 7:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['david', 'comes', 'bethlehem', 'said', 'hasn’t', 'offspring', 'that', 'where', 'christ', 'scripture']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 43, 'So there arose a division in the multitude because of him.', 'John 7:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['division', 'because', 'multitude', 'arose', 'there']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 44, 'Some of them would have arrested him, but no one laid hands on him.', 'John 7:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['would', 'arrested', 'have', 'some', 'them', 'hands', 'laid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 45, 'The officers therefore came to the chief priests and Pharisees, and they said to them, “Why didn’t you bring him?”', 'John 7:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', 'officers', 'bring', 'priests', 'didn’t', 'said', '“why', 'them', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 46, 'The officers answered, “No man ever spoke like this man!”', 'John 7:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['officers', 'ever', 'spoke', 'this', 'like', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 47, 'The Pharisees therefore answered them, “You aren’t also led astray, are you?', 'John 7:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', '“you', 'also', 'aren’t', 'pharisees', 'them', 'astray', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 48, 'Have any of the rulers believed in him, or of the Pharisees?', 'John 7:48', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['have', 'believed', 'rulers', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 49, 'But this multitude that doesn’t know the law is accursed.”', 'John 7:49', 'WEB', ARRAY['General']::TEXT[], ARRAY['accursed', 'multitude', 'know', 'this', 'that', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 50, 'Nicodemus (he who came to him by night, being one of them) said to them,', 'John 7:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['night', 'being', 'said', 'them)', 'them', 'nicodemus', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 51, '“Does our law judge a man, unless it first hears from him personally and knows what he does?”', 'John 7:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['unless', 'first', '“does', 'personally', 'judge', 'what', 'does', 'knows', 'hears']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 52, 'They answered him, “Are you also from Galilee? Search, and see that no prophet has arisen out of Galilee.”', 'John 7:52', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['they', '“are', 'arisen', 'galilee', 'also', 'that', 'prophet', 'search', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_7}', 53, 'Everyone went to his own house,', 'John 7:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'everyone', 'went']::TEXT[], NOW());

-- John Chapter 8 (59 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 1, 'but Jesus went to the Mount of Olives.', 'John 8:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'mount', 'olives', 'went']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 2, 'Now very early in the morning, he came again into the temple, and all the people came to him. He sat down, and taught them.', 'John 8:2', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['early', 'taught', 'them', 'temple', 'very', 'people', 'morning', 'down', 'again', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 3, 'The scribes and the Pharisees brought a woman taken in adultery. Having set her in the middle,', 'John 8:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['taken', 'woman', 'scribes', 'adultery', 'brought', 'having', 'middle', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 4, 'they told him, “Teacher, we found this woman in adultery, in the very act.', 'John 8:4', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['found', 'they', 'woman', 'adultery', 'very', 'this', '“teacher', 'told']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 5, 'Now in our law, Moses commanded us to stone such women. What then do you say about her?”', 'John 8:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'then', 'stone', 'moses', 'commanded', 'such', 'women']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 6, 'They said this testing him, that they might have something to accuse him of.
But Jesus stooped down, and wrote on the ground with his finger.', 'John 8:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['something', 'might', 'they', 'ground', 'finger', 'testing', 'jesus', 'accuse', 'this', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 7, 'But when they continued asking him, he looked up and said to them,
“He who is without sin among you, let him throw the first stone at her.”', 'John 8:7', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['looked', 'first', 'they', 'without', 'continued', 'stone', 'throw', 'among', 'said', 'asking']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 8, 'Again he stooped down, and with his finger wrote on the ground.', 'John 8:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['ground', 'finger', 'wrote', 'stooped', 'down', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 9, 'They, when they heard it, being convicted by their conscience, went out one by one, beginning from the oldest, even to the last. Jesus was left alone with the woman where she was, in the middle.', 'John 8:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['convicted', 'they', 'their', 'middle', 'beginning', 'went', 'woman', 'jesus', 'even', 'left']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 10, 'Jesus, standing up, saw her and said,
“Woman, where are your accusers? Did no one condemn you?”', 'John 8:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['standing', 'condemn', 'jesus', 'accusers', '“woman', 'said', 'your', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 11, 'She said, “No one, Lord.”
Jesus said,
“Neither do I condemn you. Go your way. From now on, sin no more.”', 'John 8:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['condemn', 'jesus', 'said', 'your', 'lord', 'more', '“neither']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 12, 'Again, therefore, Jesus spoke to them, saying,
“I am the light of the world.
He who follows me will not walk in the darkness, but will have the light of life.”', 'John 8:12', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['darkness', 'therefore', 'saying', 'life', 'jesus', 'light', 'will', 'spoke', 'walk', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 13, 'The Pharisees therefore said to him, “You testify about yourself. Your testimony is not valid.”', 'John 8:13', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['therefore', 'testimony', 'valid', '“you', 'yourself', 'said', 'your', 'testify', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 14, 'Jesus answered them,
“Even if I testify about myself, my testimony is true, for I know where I came from, and where I am going; but you don’t know where I came from, or where I am going.', 'John 8:14', 'WEB', ARRAY['Truth', 'Witness']::TEXT[], ARRAY['going;', 'answered', 'testimony', 'going', 'jesus', 'know', 'myself', 'don’t', 'true', 'testify']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 15, 'You judge according to the flesh. I judge no one.', 'John 8:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['according', 'judge', 'flesh']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 16, 'Even if I do judge, my judgment is true, for I am not alone, but I am with the Father who sent me.', 'John 8:16', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['judge', 'even', 'true', 'father', 'judgment', 'alone', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 17, 'It’s also written in your law that the testimony of two people is valid.', 'John 8:17', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['written', 'testimony', 'valid', 'that', 'also', 'your', 'it’s', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 18, 'I am one who testifies about myself, and the Father who sent me testifies about me.”', 'John 8:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['father', 'sent', 'testifies', 'myself']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 19, 'They said therefore to him, “Where is your Father?”
Jesus answered,
“You know neither me, nor my Father. If you knew me, you would know my Father also.”', 'John 8:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', 'knew', '“where', 'jesus', 'would', 'know', '“you', 'said', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 20, 'Jesus spoke these words in the treasury, as he taught in the temple. Yet no one arrested him, because his hour had not yet come.', 'John 8:20', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['treasury', 'because', 'jesus', 'these', 'taught', 'arrested', 'hour', 'spoke', 'temple', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 21, 'Jesus said therefore again to them,
“I am going away, and you will seek me, and you will die in your sins. Where I go, you can’t come.”', 'John 8:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'going', 'seek', 'can’t', 'jesus', 'will', 'sins', 'said', 'away', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 22, 'The Jews therefore said, “Will he kill himself, because he says,
‘Where I am going, you can’t come’?”', 'John 8:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'jews', 'because', 'going', 'can’t', 'himself', '‘where', 'said', 'says', 'come’']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 23, 'He said to them,
“You are from beneath. I am from above. You are of this world. I am not of this world.', 'John 8:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['above', 'beneath', '“you', 'this', 'said', 'world', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 24, 'I said therefore to you that you will die in your sins; for unless you believe that I am
he, you will die in your sins.”', 'John 8:24', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['unless', 'therefore', 'will', 'sins', 'said', 'your', 'that', 'believe', 'sins;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 25, 'They said therefore to him, “Who are you?”
Jesus said to them,
“Just what I have been saying to you from the beginning.', 'John 8:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', 'what', 'been', 'saying', 'beginning', 'jesus', '“just', 'said', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 26, 'I have many things to speak and to judge concerning you. However he who sent me is true; and the things which I heard from him, these I say to the world.”', 'John 8:26', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['things', 'judge', 'which', 'these', 'true;', 'many', 'have', 'however', 'heard', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 27, 'They didn’t understand that he spoke to them about the Father.', 'John 8:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'spoke', 'didn’t', 'understand', 'father', 'that', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 28, 'Jesus therefore said to them,
“When you have lifted up the Son of Man, then you will know that I am he, and I do nothing of myself, but as my Father taught me, I say these things.', 'John 8:28', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['things', 'therefore', 'jesus', 'will', 'taught', 'these', 'know', 'myself', 'said', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 29, 'He who sent me is with me. The Father hasn’t left me alone, for I always do the things that are pleasing to him.”', 'John 8:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'pleasing', 'left', 'hasn’t', 'father', 'that', 'alone', 'sent', 'always']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 30, 'As he spoke these things, many believed in him.', 'John 8:30', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['things', 'these', 'spoke', 'many', 'believed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 31, 'Jesus therefore said to those Jews who had believed him,
“If you remain in my word, then you are truly my disciples.', 'John 8:31', 'WEB', ARRAY['Faith', 'Discipleship', 'Truth']::TEXT[], ARRAY['remain', 'therefore', 'jews', 'jesus', 'word', 'those', 'said', 'believed', 'truly', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 32, 'You will know the truth, and the truth will make you free.”', 'John 8:32', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['free', 'will', 'make', 'know', 'truth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 33, 'They answered him, “We are Abraham’s offspring, and have never been in bondage to anyone. How do you say,
‘You will be made free’?”', 'John 8:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'they', 'been', 'will', 'never', 'abraham’s', 'bondage', 'free’', 'have', 'offspring']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 34, 'Jesus answered them,
“Most certainly I tell you, everyone who commits sin is the bondservant of sin.', 'John 8:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['tell', 'bondservant', 'jesus', '“most', 'everyone', 'commits', 'them', 'certainly', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 35, 'A bondservant doesn’t live in the house forever. A son remains forever.', 'John 8:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'bondservant', 'forever', 'remains', 'live', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 36, 'If therefore the Son makes you free, you will be free indeed.', 'John 8:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['free', 'therefore', 'makes', 'will', 'indeed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 37, 'I know that you are Abraham’s offspring, yet you seek to kill me, because my word finds no place in you.', 'John 8:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['seek', 'because', 'abraham’s', 'know', 'word', 'finds', 'place', 'offspring', 'that', 'kill']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 38, 'I say the things which I have seen with my Father; and you also do the things which you have seen with your father.”', 'John 8:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'father;', 'seen', 'which', 'have', 'also', 'your', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 39, 'They answered him, “Our father is Abraham.”
Jesus said to them,
“If you were Abraham’s children, you would do the works of Abraham.', 'John 8:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'they', '“our', 'jesus', 'would', 'abraham’s', 'said', 'father', 'works', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 40, 'But now you seek to kill me, a man who has told you the truth, which I heard from God. Abraham didn’t do this.', 'John 8:40', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['seek', 'abraham', 'which', 'didn’t', 'this', 'told', 'heard', 'truth', 'kill']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 41, 'You do the works of your father.”
They said to him, “We were not born of sexual immorality. We have one Father, God.”', 'John 8:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'immorality', 'said', 'have', 'father', 'works', 'your', 'born', 'sexual', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 42, 'Therefore Jesus said to them,
“If God were your father, you would love me, for I came out and have come from God. For I haven’t come of myself, but he sent me.', 'John 8:42', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'therefore', 'jesus', 'would', 'haven’t', 'myself', 'said', 'have', 'come', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 43, 'Why don’t you understand my speech? Because you can’t hear my word.', 'John 8:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['speech', 'because', 'can’t', 'hear', 'word', 'understand', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 44, 'You are of your father, the devil, and you want to do the desires of your father. He was a murderer from the beginning, and doesn’t stand in the truth, because there is no truth in him. When he speaks a lie, he speaks on his own; for he is a liar, and the father of lies.', 'John 8:44', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['want', 'truth', 'beginning', 'because', 'own;', 'desires', 'stand', 'speaks', 'there', 'lies']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 45, 'But because I tell the truth, you don’t believe me.', 'John 8:45', 'WEB', ARRAY['Faith', 'Truth']::TEXT[], ARRAY['tell', 'because', 'believe', 'don’t', 'truth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 46, 'Which of you convicts me of sin? If I tell the truth, why do you not believe me?', 'John 8:46', 'WEB', ARRAY['Faith', 'Truth']::TEXT[], ARRAY['tell', 'which', 'believe', 'truth', 'convicts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 47, 'He who is of God hears the words of God. For this cause you don’t hear, because you are not of God.”', 'John 8:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['because', 'cause', 'hear', 'this', 'words', 'don’t', 'hears']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 48, 'Then the Jews answered him, “Don’t we say well that you are a Samaritan, and have a demon?”', 'John 8:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['well', 'jews', '“don’t', 'demon', 'have', 'samaritan', 'that', 'then', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 49, 'Jesus answered,
“I don’t have a demon, but I honor my Father, and you dishonor me.', 'John 8:49', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'demon', 'honor', 'have', 'father', 'dishonor', 'don’t', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 50, 'But I don’t seek my own glory. There is one who seeks and judges.', 'John 8:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['seek', 'seeks', 'there', 'judges', 'glory', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 51, 'Most certainly, I tell you, if a person keeps my word, he will never see death.”', 'John 8:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'tell', 'will', 'never', 'death', 'word', 'person', 'keeps', 'certainly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 52, 'Then the Jews said to him, “Now we know that you have a demon. Abraham died, and the prophets; and you say,
‘If a man keeps my word, he will never taste of death.’', 'John 8:52', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['jews', 'will', 'never', 'death', 'know', 'demon', 'died', 'prophets;', 'word', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 53, 'Are you greater than our father, Abraham, who died? The prophets died. Who do you make yourself out to be?”', 'John 8:53', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['than', 'died', 'make', 'yourself', 'father', 'prophets', 'greater', 'abraham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 54, 'Jesus answered,
“If I glorify myself, my glory is nothing. It is my Father who glorifies me, of whom you say that he is our God.', 'John 8:54', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'whom', 'myself', 'that', 'father', 'glorify', 'nothing', 'glorifies', 'glory', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 55, 'You have not known him, but I know him. If I said, ‘I don’t know him,’ I would be like you, a liar. But I know him, and keep his word.', 'John 8:55', 'WEB', ARRAY['General']::TEXT[], ARRAY['would', 'know', 'known', 'word', 'said', 'have', 'keep', 'like', 'liar', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 56, 'Your father Abraham rejoiced to see my day. He saw it, and was glad.”', 'John 8:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['rejoiced', 'glad', 'father', 'your', 'abraham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 57, 'The Jews therefore said to him, “You are not yet fifty years old, and have you seen Abraham?”', 'John 8:57', 'WEB', ARRAY['General']::TEXT[], ARRAY['years', 'therefore', 'jews', 'seen', '“you', 'said', 'have', 'fifty', 'abraham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 58, 'Jesus said to them,
“Most certainly, I tell you, before Abraham came into existence, I AM.”', 'John 8:58', 'WEB', ARRAY['General']::TEXT[], ARRAY['tell', 'existence', 'jesus', '“most', 'said', 'came', 'before', 'them', 'certainly', 'abraham']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_8}', 59, 'Therefore they took up stones to throw at him, but Jesus was hidden, and went out of the temple, having gone through the middle of them, and so passed by.', 'John 8:59', 'WEB', ARRAY['General']::TEXT[], ARRAY['hidden', 'they', 'therefore', 'stones', 'gone', 'went', 'passed', 'jesus', 'took', 'temple']::TEXT[], NOW());

-- John Chapter 9 (41 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 1, 'As he passed by, he saw a man blind from birth.', 'John 9:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['birth', 'passed', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 2, 'His disciples asked him, “Rabbi, who sinned, this man or his parents, that he was born blind?”', 'John 9:2', 'WEB', ARRAY['Prayer', 'Teaching', 'Discipleship']::TEXT[], ARRAY['asked', '“rabbi', 'sinned', 'this', 'parents', 'born', 'that', 'disciples', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 3, 'Jesus answered,
“Neither did this man sin, nor his parents; but, that the works of God might be revealed in him.', 'John 9:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'answered', 'revealed', 'jesus', 'parents;', 'this', 'works', 'that', '“neither']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 4, 'I must work the works of him who sent me, while it is day. The night is coming, when no one can work.', 'John 9:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['coming', 'night', 'work', 'while', 'works', 'when', 'sent', 'must']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 5, 'While I am in the world, I am the light of the world.”', 'John 9:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['world', 'light', 'while']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 6, 'When he had said this, he spat on the ground, made mud with the saliva, anointed the blind man’s eyes with the mud,', 'John 9:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['made', 'ground', 'saliva', 'this', 'said', 'anointed', 'when', 'eyes', 'spat', 'man’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 7, 'and said to him,
“Go, wash in the pool of Siloam” (which means “Sent”). So he went away, washed, and came back seeing.', 'John 9:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['wash', 'means', '(which', 'went', 'washed', '“sent”)', 'siloam”', 'back', 'said', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 8, 'The neighbors therefore, and those who saw that he was blind before, said, “Isn’t this he who sat and begged?”', 'John 9:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['“isn’t', 'therefore', 'neighbors', 'begged', 'those', 'this', 'said', 'that', 'before', 'blind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 9, 'Others were saying, “It is he.” Still others were saying, “He looks like him.”
He said, “I am he.”', 'John 9:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['looks', 'saying', 'still', 'others', 'said', 'like', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 10, 'They therefore were asking him, “How were your eyes opened?”', 'John 9:10', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['they', 'therefore', 'opened', 'asking', 'your', 'eyes', 'were', '“how']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 11, 'He answered, “A man called Jesus made mud, anointed my eyes, and said to me,
‘Go to the pool of Siloam, and wash.’ So I went away and washed, and I received sight.”', 'John 9:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['siloam', 'wash', 'answered', 'washed', 'went', 'sight', 'jesus', 'said', 'away', 'anointed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 12, 'Then they asked him, “Where is he?”
He said, “I don’t know.”', 'John 9:12', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'they', '“where', 'know', 'said', 'then', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 13, 'They brought him who had been blind to the Pharisees.', 'John 9:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'been', 'blind', 'brought', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 14, 'It was a Sabbath when Jesus made the mud and opened his eyes.', 'John 9:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'opened', 'when', 'eyes', 'made', 'sabbath']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 15, 'Again therefore the Pharisees also asked him how he received his sight. He said to them, “He put mud on my eyes, I washed, and I see.”', 'John 9:15', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'therefore', 'washed', 'sight', 'eyes', 'received', 'said', 'also', 'them', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 16, 'Some therefore of the Pharisees said, “This man is not from God, because he doesn’t keep the Sabbath.” Others said, “How can a man who is a sinner do such signs?” There was division among them.', 'John 9:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['division', 'such', 'therefore', 'sinner', 'because', 'sabbath', '“how', 'others', 'there', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 17, 'Therefore they asked the blind man again, “What do you say about him, because he opened your eyes?”
He said, “He is a prophet.”', 'John 9:17', 'WEB', ARRAY['Prayer', 'Prophecy']::TEXT[], ARRAY['asked', 'they', 'therefore', '“what', 'prophet', 'because', 'opened', 'said', 'your', 'eyes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 18, 'The Jews therefore did not believe concerning him, that he had been blind, and had received his sight, until they called the parents of him who had received his sight,', 'John 9:18', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['been', 'therefore', 'they', 'jews', 'called', 'sight', 'until', 'received', 'parents', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 19, 'and asked them, “Is this your son, whom you say was born blind? How then does he now see?”', 'John 9:19', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'does', 'blind', 'this', 'your', 'born', 'then', 'them', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 20, 'His parents answered them, “We know that this is our son, and that he was born blind;', 'John 9:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['blind;', 'know', 'this', 'parents', 'born', 'that', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 21, 'but how he now sees, we don’t know; or who opened his eyes, we don’t know. He is of age. Ask him. He will speak for himself.”', 'John 9:21', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['know;', 'will', 'himself', 'know', 'opened', 'sees', 'speak', 'eyes', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 22, 'His parents said these things because they feared the Jews; for the Jews had already agreed that if any man would confess him as Christ, he would be put out of the synagogue.', 'John 9:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'confess', 'jews', 'because', 'feared', 'jews;', 'these', 'already', 'agreed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 23, 'Therefore his parents said, “He is of age. Ask him.”', 'John 9:23', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['said', 'parents', 'therefore']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 24, 'So they called the man who was blind a second time, and said to him, “Give glory to God. We know that this man is a sinner.”', 'John 9:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'time', 'sinner', 'called', 'know', 'this', 'said', 'second', '“give', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 25, 'He therefore answered, “I don’t know if he is a sinner. One thing I do know: that though I was blind, now I see.”', 'John 9:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['thing', 'therefore', 'sinner', 'know', 'blind', 'know:', 'that', 'don’t', 'though', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 26, 'They said to him again, “What did he do to you? How did he open your eyes?”', 'John 9:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', '“what', 'said', 'your', 'eyes', 'again', 'open']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 27, 'He answered them, “I told you already, and you didn’t listen. Why do you want to hear it again? You don’t also want to become his disciples, do you?”', 'John 9:27', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['want', 'disciples', 'already', 'hear', 'didn’t', 'listen', 'don’t', 'told', 'also', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 28, 'They insulted him and said, “You are his disciple, but we are disciples of Moses.', 'John 9:28', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'disciple', '“you', 'said', 'insulted', 'disciples', 'moses']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 29, 'We know that God has spoken to Moses. But as for this man, we don’t know where he comes from.”', 'John 9:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['comes', 'know', 'spoken', 'where', 'this', 'that', 'don’t', 'moses']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 30, 'The man answered them, “How amazing! You don’t know where he comes from, yet he opened my eyes.', 'John 9:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['answered', 'eyes', 'comes', 'know', 'opened', 'where', 'amazing', 'them', 'don’t', '“how']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 31, 'We know that God doesn’t listen to sinners, but if anyone is a worshiper of God, and does his will, he listens to him.', 'John 9:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'sinners', 'does', 'will', 'know', 'listens', 'listen', 'worshiper', 'that', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 32, 'Since the world began it has never been heard of that anyone opened the eyes of someone born blind.', 'John 9:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'been', 'never', 'since', 'opened', 'someone', 'began', 'that', 'heard', 'born']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 33, 'If this man were not from God, he could do nothing.”', 'John 9:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['this', 'could', 'were', 'nothing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 34, 'They answered him, “You were altogether born in sins, and do you teach us?” They threw him out.', 'John 9:34', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['teach', 'threw', 'they', 'altogether', 'sins', '“you', 'born', 'were', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 35, 'Jesus heard that they had thrown him out, and finding him, he said,
“Do you believe in the Son of God?”', 'John 9:35', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'jesus', 'said', 'heard', 'that', 'believe', 'thrown', 'finding']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 36, 'He answered, “Who is he, Lord, that I may believe in him?”', 'John 9:36', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['that', 'believe', '“who', 'lord', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 37, 'Jesus said to him,
“You have both seen him, and it is he who speaks with you.”', 'John 9:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['seen', 'jesus', 'speaks', 'both', '“you', 'said', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 38, 'He said, “Lord, I believe!” and he worshiped him.', 'John 9:38', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['believe', 'said', '“lord', 'worshiped']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 39, 'Jesus said,
“I came into this world for judgment, that those who don’t see may see; and that those who see may become blind.”', 'John 9:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['see;', 'jesus', 'those', 'this', 'said', 'that', 'judgment', 'world', 'don’t', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 40, 'Those of the Pharisees who were with him heard these things, and said to him, “Are we also blind?”', 'John 9:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'these', '“are', 'blind', 'those', 'said', 'also', 'heard', 'were', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_9}', 41, 'Jesus said to them,
“If you were blind, you would have no sin; but now you say, ‘We see.’ Therefore your sin remains.', 'John 9:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'jesus', 'would', 'sin;', 'remains', 'said', 'have', 'your', 'them', 'were']::TEXT[], NOW());

-- John Chapter 10 (42 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 1, '“Most certainly, I tell you, one who doesn’t enter by the door into the sheep fold, but climbs up some other way, the same is a thief and a robber.', 'John 10:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['fold', 'tell', 'sheep', 'robber', '“most', 'other', 'same', 'some', 'enter', 'door']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 2, 'But one who enters in by the door is the shepherd of the sheep.', 'John 10:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['shepherd', 'enters', 'door', 'sheep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 3, 'The gatekeeper opens the gate for him, and the sheep listen to his voice. He calls his own sheep by name, and leads them out.', 'John 10:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['leads', 'voice', 'name', 'sheep', 'opens', 'listen', 'calls', 'gate', 'them', 'gatekeeper']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 4, 'Whenever he brings out his own sheep, he goes before them, and the sheep follow him, for they know his voice.', 'John 10:4', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['brings', 'voice', 'they', 'sheep', 'know', 'follow', 'goes', 'before', 'whenever', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 5, 'They will by no means follow a stranger, but will flee from him; for they don’t know the voice of strangers.”', 'John 10:5', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['voice', 'they', 'means', 'flee', 'will', 'know', 'him;', 'follow', 'stranger', 'strangers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 6, 'Jesus spoke this parable to them, but they didn’t understand what he was telling them.', 'John 10:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'what', 'parable', 'jesus', 'spoke', 'didn’t', 'this', 'understand', 'telling', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 7, 'Jesus therefore said to them again,
“Most certainly, I tell you, I am the sheep’s door.', 'John 10:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['sheep’s', 'therefore', 'tell', 'jesus', '“most', 'said', 'door', 'certainly', 'them', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 8, 'All who came before me are thieves and robbers, but the sheep didn’t listen to them.', 'John 10:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['sheep', 'thieves', 'didn’t', 'listen', 'before', 'robbers', 'them', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 9, 'I am the door. If anyone enters in by me, he will be saved, and will go in and go out, and will find pasture.', 'John 10:9', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['anyone', 'find', 'pasture', 'will', 'saved', 'enters', 'door']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 10, 'The thief only comes to steal, kill, and destroy. I came that they may have life, and may have it abundantly.', 'John 10:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'life', 'comes', 'only', 'have', 'steal', 'abundantly', 'that', 'destroy', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 11, 'I am the good shepherd.
The good shepherd lays down his life for the sheep.', 'John 10:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['sheep', 'life', 'shepherd', 'good', 'lays', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 12, 'He who is a hired hand, and not a shepherd, who doesn’t own the sheep, sees the wolf coming, leaves the sheep, and flees. The wolf snatches the sheep, and scatters them.', 'John 10:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['sheep', 'coming', 'shepherd', 'leaves', 'wolf', 'them', 'snatches', 'hand', 'scatters', 'sees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 13, 'The hired hand flees because he is a hired hand, and doesn’t care for the sheep.', 'John 10:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['because', 'sheep', 'hand', 'care', 'hired', 'flees', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 14, 'I am the good shepherd. I know my own, and I’m known by my own;', 'John 10:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['own;', 'shepherd', 'know', 'good', 'known']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 15, 'even as the Father knows me, and I know the Father. I lay down my life for the sheep.', 'John 10:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['sheep', 'life', 'knows', 'know', 'even', 'father', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 16, 'I have other sheep, which are not of this fold.
I must bring them also, and they will hear my voice. They will become one flock with one shepherd.', 'John 10:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['voice', 'they', 'flock', 'fold', 'sheep', 'which', 'shepherd', 'will', 'hear', 'other']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 17, 'Therefore the Father loves me, because I lay down my life,

that I may take it again.', 'John 10:17', 'WEB', ARRAY['Love']::TEXT[], ARRAY['therefore', 'because', 'life', 'take', 'loves', 'father', 'that', 'down', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 18, 'No one takes it away from me, but I lay it down by myself. I have power to lay it down, and I have power to take it again. I received this commandment from my Father.”', 'John 10:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['commandment', 'take', 'myself', 'this', 'away', 'have', 'received', 'father', 'takes', 'power']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 19, 'Therefore a division arose again among the Jews because of these words.', 'John 10:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['division', 'therefore', 'jews', 'because', 'these', 'arose', 'among', 'words', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 20, 'Many of them said, “He has a demon, and is insane! Why do you listen to him?”', 'John 10:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['demon', 'many', 'listen', 'said', 'insane', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 21, 'Others said, “These are not the sayings of one possessed by a demon. It isn’t possible for a demon to open the eyes of the blind, is it?”', 'John 10:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'possible', 'sayings', 'demon', 'others', 'said', '“these', 'open', 'eyes', 'possessed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 22, 'It was the Feast of the Dedication at Jerusalem.', 'John 10:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['dedication', 'feast', 'jerusalem']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 23, 'It was winter, and Jesus was walking in the temple, in Solomon’s porch.', 'John 10:23', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['porch', 'walking', 'jesus', 'solomon’s', 'temple', 'winter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 24, 'The Jews therefore came around him and said to him, “How long will you hold us in suspense? If you are the Christ, tell us plainly.”', 'John 10:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'jews', 'tell', 'around', 'will', 'said', 'hold', 'christ', 'plainly', 'long']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 25, 'Jesus answered them,
“I told you, and you don’t believe. The works that I do in my Father’s name, these testify about me.', 'John 10:25', 'WEB', ARRAY['Faith', 'Witness']::TEXT[], ARRAY['father’s', 'name', 'jesus', 'these', 'told', 'works', 'testify', 'that', 'believe', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 26, 'But you don’t believe, because you are not of my sheep, as I told you.', 'John 10:26', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['sheep', 'because', 'told', 'believe', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 27, 'My sheep hear my voice, and I know them, and they follow me.', 'John 10:27', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['voice', 'they', 'sheep', 'hear', 'know', 'follow', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 28, 'I give eternal life to them. They will never perish, and no one will snatch them out of my hand.', 'John 10:28', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['snatch', 'they', 'life', 'give', 'will', 'never', 'perish', 'hand', 'them', 'eternal']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 29, 'My Father, who has given them to me, is greater than all. No one is able to snatch them out of my Father’s hand.', 'John 10:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['snatch', 'than', 'father’s', 'given', 'hand', 'father', 'greater', 'them', 'able']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 30, 'I and the Father are one.”', 'John 10:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 31, 'Therefore Jews took up stones again to stone him.', 'John 10:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['stones', 'therefore', 'jews', 'took', 'stone', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 32, 'Jesus answered them,
“I have shown you many good works from my Father. For which of those works do you stone me?”', 'John 10:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'jesus', 'stone', 'good', 'shown', 'many', 'those', 'have', 'works', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 33, 'The Jews answered him, “We don’t stone you for a good work, but for blasphemy: because you, being a man, make yourself God.”', 'John 10:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['blasphemy:', 'jews', 'because', 'stone', 'good', 'make', 'work', 'yourself', 'being', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 34, 'Jesus answered them,
“Isn’t it written in your law, ‘I said, you are gods?’', 'John 10:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['“isn’t', 'written', 'jesus', 'gods', 'said', 'your', 'them', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 35, 'If he called them gods, to whom the word of God came (and the Scripture can’t be broken),', 'John 10:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['(and', 'called', 'can’t', 'gods', 'word', 'broken)', 'them', 'came', 'scripture', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 36, 'do you say of him whom the Father sanctified and sent into the world, ‘You blaspheme,’ because I said, ‘I am the Son of God?’', 'John 10:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['because', 'blaspheme', 'sanctified', 'said', 'father', 'world', 'sent', '‘you', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 37, 'If I don’t do the works of my Father, don’t believe me.', 'John 10:37', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['father', 'believe', 'don’t', 'works']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 38, 'But if I do them, though you don’t believe me, believe the works; that you may know and believe that the Father is in me, and I in the Father.”', 'John 10:38', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['works;', 'know', 'father', 'that', 'believe', 'them', 'don’t', 'though']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 39, 'They sought again to seize him, and he went out of their hand.', 'John 10:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['seize', 'they', 'their', 'went', 'hand', 'again', 'sought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 40, 'He went away again beyond the Jordan into the place where John was baptizing at first, and there he stayed.', 'John 10:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'john', 'went', 'stayed', 'place', 'there', 'away', 'baptizing', 'beyond', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 41, 'Many came to him. They said, “John indeed did no sign, but everything that John said about this man is true.”', 'John 10:41', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['sign', 'they', 'john', 'many', 'this', 'said', 'indeed', 'true', '“john', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_10}', 42, 'Many believed in him there.', 'John 10:42', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['many', 'there', 'believed']::TEXT[], NOW());

-- John Chapter 11 (57 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 1, 'Now a certain man was sick, Lazarus from Bethany, of the village of Mary and her sister, Martha.', 'John 11:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['sister', 'sick', 'mary', 'lazarus', 'martha', 'certain', 'bethany', 'village']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 2, 'It was that Mary who had anointed the Lord with ointment, and wiped his feet with her hair, whose brother, Lazarus, was sick.', 'John 11:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['feet', 'mary', 'whose', 'brother', 'lazarus', 'sick', 'wiped', 'anointed', 'ointment', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 3, 'The sisters therefore sent to him, saying, “Lord, behold, he for whom you have great affection is sick.”', 'John 11:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', '“lord', 'saying', 'great', 'affection', 'sick', 'sisters', 'have', 'behold', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 4, 'But when Jesus heard it, he said,
“This sickness is not to death, but for the glory of God, that God’s Son may be glorified by it.”', 'John 11:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'god’s', 'death', 'said', 'glorified', 'heard', 'when', 'that', '“this', 'sickness']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 5, 'Now Jesus loved Martha, and her sister, and Lazarus.', 'John 11:5', 'WEB', ARRAY['Love']::TEXT[], ARRAY['sister', 'jesus', 'lazarus', 'martha', 'loved']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 6, 'When therefore he heard that he was sick, he stayed two days in the place where he was.', 'John 11:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'stayed', 'days', 'sick', 'place', 'heard', 'when', 'that', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 7, 'Then after this he said to the disciples,
“Let’s go into Judea again.”', 'John 11:7', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['after', '“let’s', 'judea', 'this', 'said', 'again', 'then', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 8, 'The disciples told him, “Rabbi, the Jews were just trying to stone you, and are you going there again?”', 'John 11:8', 'WEB', ARRAY['Teaching', 'Discipleship']::TEXT[], ARRAY['just', 'jews', 'going', '“rabbi', 'trying', 'stone', 'there', 'told', 'again', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 9, 'Jesus answered,
“Aren’t there twelve hours of daylight? If a man walks in the day, he doesn’t stumble, because he sees the light of this world.', 'John 11:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['walks', 'because', 'daylight', 'jesus', 'light', 'stumble', 'there', 'this', 'sees', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 10, 'But if a man walks in the night, he stumbles, because the light isn’t in him.”', 'John 11:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'because', 'light', 'night', 'stumbles', 'walks']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 11, 'He said these things, and after that, he said to them,
“Our friend, Lazarus, has fallen asleep, but I am going so that I may awake him out of sleep.”', 'John 11:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'fallen', 'asleep', 'after', 'going', '“our', 'these', 'lazarus', 'friend', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 12, 'The disciples therefore said, “Lord, if he has fallen asleep, he will recover.”', 'John 11:12', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['fallen', 'therefore', 'asleep', '“lord', 'recover', 'will', 'said', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 13, 'Now Jesus had spoken of his death, but they thought that he spoke of taking rest in sleep.', 'John 11:13', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['thought', 'they', 'rest', 'jesus', 'death', 'spoken', 'spoke', 'that', 'taking', 'sleep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 14, 'So Jesus said to them plainly then,
“Lazarus is dead.', 'John 11:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['“lazarus', 'jesus', 'dead', 'said', 'then', 'plainly', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 15, 'I am glad for your sakes that I was not there, so that you may believe. Nevertheless, let’s go to him.”', 'John 11:15', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['sakes', 'let’s', 'there', 'glad', 'your', 'nevertheless', 'that', 'believe']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 16, 'Thomas therefore, who is called Didymus, said to his fellow disciples, “Let’s go also, that we may die with him.”', 'John 11:16', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['therefore', 'fellow', '“let’s', 'didymus', 'said', 'thomas', 'also', 'that', 'disciples', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 17, 'So when Jesus came, he found that he had been in the tomb four days already.', 'John 11:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'been', 'jesus', 'days', 'four', 'already', 'when', 'that', 'tomb', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 18, 'Now Bethany was near Jerusalem, about fifteen stadia away.', 'John 11:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['fifteen', 'near', 'away', 'stadia', 'jerusalem', 'bethany']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 19, 'Many of the Jews had joined the women around Martha and Mary, to console them concerning their brother.', 'John 11:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'jews', 'around', 'mary', 'brother', 'martha', 'many', 'concerning', 'joined', 'console']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 20, 'Then when Martha heard that Jesus was coming, she went and met him, but Mary stayed in the house.', 'John 11:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'coming', 'went', 'jesus', 'stayed', 'mary', 'martha', 'heard', 'when', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 21, 'Therefore Martha said to Jesus, “Lord, if you would have been here, my brother wouldn’t have died.', 'John 11:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'therefore', '“lord', 'jesus', 'would', 'brother', 'died', 'martha', 'said', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 22, 'Even now I know that, whatever you ask of God, God will give you.”', 'John 11:22', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['whatever', 'will', 'give', 'know', 'even', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 23, 'Jesus said to her,
“Your brother will rise again.”', 'John 11:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['rise', 'jesus', 'will', '“your', 'brother', 'said', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 24, 'Martha said to him, “I know that he will rise again in the resurrection at the last day.”', 'John 11:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['rise', 'will', 'know', 'martha', 'said', 'resurrection', 'last', 'that', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 25, 'Jesus said to her,
“I am the resurrection and the life. He who believes in me will still live, even if he dies.', 'John 11:25', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['life', 'jesus', 'will', 'still', 'dies', 'even', 'believes', 'said', 'live', 'resurrection']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 26, 'Whoever lives and believes in me will never die. Do you believe this?”', 'John 11:26', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['lives', 'will', 'never', 'believes', 'whoever', 'this', 'believe']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 27, 'She said to him, “Yes, Lord. I have come to believe that you are the Christ, God’s Son, he who comes into the world.”', 'John 11:27', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['“yes', 'comes', 'god’s', 'said', 'have', 'come', 'world', 'that', 'believe', 'lord']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 28, 'When she had said this, she went away, and called Mary, her sister, secretly, saying, “The Teacher is here, and is calling you.”', 'John 11:28', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['calling', 'sister', 'secretly', 'teacher', 'went', 'saying', 'mary', 'this', 'said', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 29, 'When she heard this, she arose quickly, and went to him.', 'John 11:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['went', 'arose', 'this', 'heard', 'when', 'quickly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 30, 'Now Jesus had not yet come into the village, but was in the place where Martha met him.', 'John 11:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'place', 'martha', 'come', 'where', 'village']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 31, 'Then the Jews who were with her in the house, and were consoling her, when they saw Mary, that she rose up quickly and went out, followed her, saying, “She is going to the tomb to weep there.”', 'John 11:31', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'they', 'jews', 'went', 'saying', 'going', 'then', 'tomb', 'quickly', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 32, 'Therefore when Mary came to where Jesus was, and saw him, she fell down at his feet, saying to him, “Lord, if you would have been here, my brother wouldn’t have died.”', 'John 11:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'therefore', '“lord', 'saying', 'feet', 'jesus', 'would', 'mary', 'brother', 'died']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 33, 'When Jesus therefore saw her weeping, and the Jews weeping who came with her, he groaned in the spirit, and was troubled,', 'John 11:33', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'therefore', 'jews', 'jesus', 'groaned', 'troubled', 'when', 'weeping', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 34, 'and said,
“Where have you laid him?”
They told him, “Lord, come and see.”', 'John 11:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', '“lord', '“where', 'said', 'have', 'told', 'come', 'laid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 35, 'Jesus wept.', 'John 11:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'wept']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 36, 'The Jews therefore said, “See how much affection he had for him!”', 'John 11:36', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'jews', 'affection', 'said', '“see', 'much']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 37, 'Some of them said, “Couldn’t this man, who opened the eyes of him who was blind, have also kept this man from dying?”', 'John 11:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['eyes', 'dying', '“couldn’t', 'this', 'said', 'some', 'opened', 'have', 'also', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 38, 'Jesus therefore, again groaning in himself, came to the tomb. Now it was a cave, and a stone lay against it.', 'John 11:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'cave', 'jesus', 'groaning', 'himself', 'stone', 'against', 'tomb', 'again', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 39, 'Jesus said,
“Take away the stone.”
Martha, the sister of him who was dead, said to him, “Lord, by this time there is a stench, for he has been dead four days.”', 'John 11:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'sister', 'been', '“lord', 'jesus', 'days', 'stone', 'four', 'martha', 'dead']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 40, 'Jesus said to her,
“Didn’t I tell you that if you believed, you would see God’s glory?”', 'John 11:40', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['tell', 'jesus', 'would', 'god’s', '“didn’t', 'said', 'believed', 'that', 'glory']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 41, 'So they took away the stone from the place where the dead man was lying. Jesus lifted up his eyes, and said,
“Father, I thank you that you listened to me.', 'John 11:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', '“father', 'jesus', 'took', 'stone', 'place', 'dead', 'away', 'said', 'lying']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 42, 'I know that you always listen to me, but because of the multitude standing around I said this, that they may believe that you sent me.”', 'John 11:42', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'standing', 'believe', 'because', 'multitude', 'around', 'know', 'listen', 'said', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 43, 'When he had said this, he cried with a loud voice,
“Lazarus, come out!”', 'John 11:43', 'WEB', ARRAY['General']::TEXT[], ARRAY['voice', '“lazarus', 'this', 'said', 'come', 'when', 'cried', 'loud']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 44, 'He who was dead came out, bound hand and foot with wrappings, and his face was wrapped around with a cloth.
Jesus said to them,
“Free him, and let him go.”', 'John 11:44', 'WEB', ARRAY['General']::TEXT[], ARRAY['cloth', 'wrapped', 'face', 'jesus', 'around', 'wrappings', 'bound', '“free', 'dead', 'hand']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 45, 'Therefore many of the Jews, who came to Mary and saw what Jesus did, believed in him.', 'John 11:45', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['therefore', 'what', 'jews', 'jesus', 'mary', 'many', 'believed', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 46, 'But some of them went away to the Pharisees, and told them the things which Jesus had done.', 'John 11:46', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'went', 'which', 'jesus', 'done', 'away', 'some', 'told', 'them', 'pharisees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 47, 'The chief priests therefore and the Pharisees gathered a council, and said, “What are we doing? For this man does many signs.', 'John 11:47', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', '“what', 'does', 'priests', 'many', 'this', 'said', 'gathered', 'signs', 'doing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 48, 'If we leave him alone like this, everyone will believe in him, and the Romans will come and take away both our place and our nation.”', 'John 11:48', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['romans', 'believe', 'leave', 'nation', 'will', 'take', 'place', 'both', 'this', 'everyone']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 49, 'But a certain one of them, Caiaphas, being high priest that year, said to them, “You know nothing at all,', 'John 11:49', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest', 'high', 'know', 'caiaphas', '“you', 'being', 'said', 'certain', 'year', 'nothing']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 50, 'nor do you consider that it is advantageous for us that one man should die for the people, and that the whole nation not perish.”', 'John 11:50', 'WEB', ARRAY['General']::TEXT[], ARRAY['nation', 'should', 'advantageous', 'perish', 'whole', 'that', 'consider', 'people']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 51, 'Now he didn’t say this of himself, but being high priest that year, he prophesied that Jesus would die for the nation,', 'John 11:51', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest', 'nation', 'prophesied', 'jesus', 'high', 'would', 'himself', 'didn’t', 'this', 'being']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 52, 'and not for the nation only, but that he might also gather together into one the children of God who are scattered abroad.', 'John 11:52', 'WEB', ARRAY['General']::TEXT[], ARRAY['together', 'might', 'children', 'nation', 'gather', 'only', 'abroad', 'scattered', 'also', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 53, 'So from that day forward they took counsel that they might put him to death.', 'John 11:53', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'they', 'took', 'death', 'counsel', 'that', 'forward']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 54, 'Jesus therefore walked no more openly among the Jews, but departed from there into the country near the wilderness, to a city called Ephraim. He stayed there with his disciples.', 'John 11:54', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['city', 'ephraim', 'openly', 'therefore', 'wilderness', 'jews', 'called', 'jesus', 'stayed', 'departed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 55, 'Now the Passover of the Jews was at hand. Many went up from the country to Jerusalem before the Passover, to purify themselves.', 'John 11:55', 'WEB', ARRAY['General']::TEXT[], ARRAY['passover', 'purify', 'jews', 'went', 'many', 'hand', 'jerusalem', 'before', 'country', 'themselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 56, 'Then they sought for Jesus and spoke one with another, as they stood in the temple, “What do you think—that he isn’t coming to the feast at all?”', 'John 11:56', 'WEB', ARRAY['General']::TEXT[], ARRAY['isn’t', 'they', '“what', 'another', 'coming', 'jesus', 'stood', 'feast', 'spoke', 'temple']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_11}', 57, 'Now the chief priests and the Pharisees had commanded that if anyone knew where he was, he should report it, that they might seize him.', 'John 11:57', 'WEB', ARRAY['General']::TEXT[], ARRAY['might', 'anyone', 'report', 'they', 'knew', 'seize', 'should', 'priests', 'that', 'commanded']::TEXT[], NOW());

-- John Chapter 12 (50 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 1, 'Then six days before the Passover, Jesus came to Bethany, where Lazarus was, who had been dead, whom he raised from the dead.', 'John 12:1', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['passover', 'been', 'jesus', 'days', 'lazarus', 'dead', 'before', 'raised', 'then', 'bethany']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 2, 'So they made him a supper there. Martha served, but Lazarus was one of those who sat at the table with him.', 'John 12:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'martha', 'lazarus', 'there', 'those', 'supper', 'table', 'made', 'served']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 3, 'Mary, therefore, took a pound of ointment of pure nard, very precious, and anointed the feet of Jesus, and wiped his feet with her hair. The house was filled with the fragrance of the ointment.', 'John 12:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'therefore', 'nard', 'feet', 'jesus', 'fragrance', 'took', 'pound', 'mary', 'precious']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 4, 'Then Judas Iscariot, Simon’s son, one of his disciples, who would betray him, said,', 'John 12:4', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['iscariot', 'simon’s', 'judas', 'would', 'said', 'then', 'betray', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 5, '“Why wasn’t this ointment sold for three hundred denarii, and given to the poor?”', 'John 12:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['sold', 'denarii', 'hundred', 'given', 'poor', 'wasn’t', 'this', '“why', 'three', 'ointment']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 6, 'Now he said this, not because he cared for the poor, but because he was a thief, and having the money box, used to steal what was put into it.', 'John 12:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'because', 'cared', 'used', 'poor', 'money', 'this', 'said', 'steal', 'having']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 7, 'But Jesus said,
“Leave her alone. She has kept this for the day of my burial.', 'John 12:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['burial', 'jesus', 'this', 'said', 'alone', 'kept', '“leave']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 8, 'For you always have the poor with you, but you don’t always have me.”', 'John 12:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['poor', 'always', 'have', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 9, 'A large crowd therefore of the Jews learned that he was there, and they came, not for Jesus’ sake only, but that they might see Lazarus also, whom he had raised from the dead.', 'John 12:9', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['might', 'they', 'therefore', 'jews', 'jesus’', 'came', 'only', 'lazarus', 'there', 'large']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 10, 'But the chief priests conspired to put Lazarus to death also,', 'John 12:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['conspired', 'death', 'priests', 'lazarus', 'also', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 11, 'because on account of him many of the Jews went away and believed in Jesus.', 'John 12:11', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['jews', 'went', 'because', 'jesus', 'many', 'account', 'away', 'believed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 12, 'On the next day a great multitude had come to the feast. When they heard that Jesus was coming to Jerusalem,', 'John 12:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'multitude', 'coming', 'jesus', 'next', 'jerusalem', 'feast', 'come', 'that', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 13, 'they took the branches of the palm trees, and went out to meet him, and cried out, “Hosanna! Blessed is he who comes in the name of the Lord, the King of Israel!”', 'John 12:13', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'palm', 'name', 'went', 'meet', '“hosanna', 'comes', 'took', 'lord', 'king']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 14, 'Jesus, having found a young donkey, sat on it. As it is written,', 'John 12:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['found', 'written', 'jesus', 'donkey', 'having', 'young']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 15, '“Don’t be afraid, daughter of Zion. Behold, your King comes, sitting on a donkey’s colt.”', 'John 12:15', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['donkey’s', 'colt', '“don’t', 'daughter', 'comes', 'sitting', 'king', 'afraid', 'your', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 16, 'His disciples didn’t understand these things at first, but when Jesus was glorified, then they remembered that these things were written about him, and that they had done these things to him.', 'John 12:16', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['first', 'things', 'they', 'written', 'done', 'jesus', 'these', 'understand', 'didn’t', 'glorified']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 17, 'The multitude therefore that was with him when he called Lazarus out of the tomb, and raised him from the dead, was testifying about it.', 'John 12:17', 'WEB', ARRAY['Miracle', 'Witness']::TEXT[], ARRAY['testifying', 'therefore', 'multitude', 'lazarus', 'dead', 'when', 'raised', 'that', 'tomb', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 18, 'For this cause also the multitude went and met him, because they heard that he had done this sign.', 'John 12:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['sign', 'they', 'went', 'cause', 'multitude', 'because', 'done', 'this', 'also', 'heard']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 19, 'The Pharisees therefore said among themselves, “See how you accomplish nothing. Behold, the world has gone after him.”', 'John 12:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'gone', 'after', 'accomplish', 'behold', 'among', 'said', 'nothing', '“see', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 20, 'Now there were certain Greeks among those that went up to worship at the feast.', 'John 12:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['worship', 'greeks', 'went', 'feast', 'those', 'there', 'among', 'certain', 'that', 'were']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 21, 'These, therefore, came to Philip, who was from Bethsaida of Galilee, and asked him, saying, “Sir, we want to see Jesus.”', 'John 12:21', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'want', 'therefore', 'saying', 'jesus', 'these', 'galilee', 'philip', '“sir', 'bethsaida']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 22, 'Philip came and told Andrew, and in turn, Andrew came with Philip, and they told Jesus.', 'John 12:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'jesus', 'told', 'philip', 'andrew', 'came', 'turn']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 23, 'Jesus answered them,
“The time has come for the Son of Man to be glorified.', 'John 12:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'jesus', 'them', 'glorified', 'come', '“the', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 24, 'Most certainly I tell you, unless a grain of wheat falls into the earth and dies, it remains by itself alone. But if it dies, it bears much fruit.', 'John 12:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'unless', 'falls', 'tell', 'fruit', 'dies', 'remains', 'earth', 'wheat', 'itself']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 25, 'He who loves his life will lose it. He who hates his life in this world will keep it to eternal life.', 'John 12:25', 'WEB', ARRAY['Love', 'Salvation']::TEXT[], ARRAY['life', 'lose', 'will', 'eternal', 'this', 'loves', 'keep', 'world', 'hates']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 26, 'If anyone serves me, let him follow me. Where I am, there will my servant also be. If anyone serves me, the Father will honor him.', 'John 12:26', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['serves', 'anyone', 'will', 'there', 'honor', 'servant', 'also', 'follow', 'father', 'where']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 27, '“Now my soul is troubled. What shall I say? ‘Father, save me from this time?’ But for this cause I came to this time.', 'John 12:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'what', 'save', 'shall', 'cause', 'soul', 'troubled', 'this', '‘father', '“now']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 28, 'Father, glorify your name!”
Then there came a voice out of the sky, saying, “I have both glorified it, and will glorify it again.”', 'John 12:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['voice', 'name', 'saying', 'will', 'both', 'there', 'have', 'glorified', 'father', 'glorify']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 29, 'The multitude therefore, who stood by and heard it, said that it had thundered. Others said, “An angel has spoken to him.”', 'John 12:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'thundered', 'multitude', 'stood', 'others', 'angel', 'spoken', 'said', 'heard', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 30, 'Jesus answered,
“This voice hasn’t come for my sake, but for your sakes.', 'John 12:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['voice', 'sakes', 'jesus', 'hasn’t', 'come', 'your', '“this', 'sake', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 31, 'Now is the judgment of this world. Now the prince of this world will be cast out.', 'John 12:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'prince', 'this', 'judgment', 'world', 'cast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 32, 'And I, if I am lifted up from the earth, will draw all people to myself.”', 'John 12:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'myself', 'earth', 'draw', 'people', 'lifted']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 33, 'But he said this, signifying by what kind of death he should die.', 'John 12:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'should', 'death', 'kind', 'this', 'said', 'signifying']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 34, 'The multitude answered him, “We have heard out of the law that the Christ remains forever. How do you say,
‘The Son of Man must be lifted up?’ Who is this Son of Man?”', 'John 12:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['multitude', '‘the', 'forever', 'remains', 'this', 'have', 'heard', 'that', 'must', 'christ']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 35, 'Jesus therefore said to them,
“Yet a little while the light is with you. Walk while you have the light, that darkness doesn’t overtake you. He who walks in the darkness doesn’t know where he is going.', 'John 12:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['darkness', 'therefore', 'going', 'jesus', 'light', 'know', 'overtake', 'walk', 'where', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 36, 'While you have the light, believe in the light, that you may become children of light.” Jesus said these things, and he departed and hid himself from them.', 'John 12:36', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['things', 'children', 'jesus', 'light', 'these', 'himself', 'have', 'said', 'while', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 37, 'But though he had done so many signs before them, yet they didn’t believe in him,', 'John 12:37', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'believe', 'done', 'many', 'didn’t', 'signs', 'before', 'them', 'though']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 38, 'that the word of Isaiah the prophet might be fulfilled, which he spoke,
“Lord, who has believed our report?
To whom has the arm of the Lord been revealed?”', 'John 12:38', 'WEB', ARRAY['Faith', 'Prophecy']::TEXT[], ARRAY['might', 'isaiah', 'report', 'been', '“lord', 'revealed', 'which', 'fulfilled', 'word', 'spoke']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 39, 'For this cause they couldn’t believe, for Isaiah said again,', 'John 12:39', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'isaiah', 'cause', 'couldn’t', 'this', 'said', 'believe', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 40, '“He has blinded their eyes and he hardened their heart,
lest they should see with their eyes,
and perceive with their heart,
and would turn,
and I would heal them.”', 'John 12:40', 'WEB', ARRAY['Miracle']::TEXT[], ARRAY['their', 'they', 'heal', 'should', 'lest', 'hardened', 'blinded', 'would', 'perceive', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 41, 'Isaiah said these things when he saw his glory, and spoke of him.', 'John 12:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'isaiah', 'these', 'spoke', 'said', 'when', 'glory']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 42, 'Nevertheless even of the rulers many believed in him, but because of the Pharisees they didn’t confess it, so that they wouldn’t be put out of the synagogue,', 'John 12:42', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'confess', 'because', 'rulers', 'even', 'many', 'didn’t', 'believed', 'wouldn’t', 'nevertheless']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 43, 'for they loved men’s praise more than God’s praise.', 'John 12:43', 'WEB', ARRAY['Love']::TEXT[], ARRAY['they', 'than', 'god’s', 'praise', 'men’s', 'loved', 'more']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 44, 'Jesus cried out and said,
“Whoever believes in me, believes not in me, but in him who sent me.', 'John 12:44', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['jesus', '“whoever', 'sent', 'believes', 'said', 'cried']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 45, 'He who sees me sees him who sent me.', 'John 12:45', 'WEB', ARRAY['General']::TEXT[], ARRAY['sent', 'sees']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 46, 'I have come as a light into the world, that whoever believes in me may not remain in the darkness.', 'John 12:46', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['remain', 'darkness', 'light', 'believes', 'whoever', 'have', 'come', 'that', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 47, 'If anyone listens to my sayings, and doesn’t believe, I don’t judge him. For I came not to judge the world, but to save the world.', 'John 12:47', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['anyone', 'judge', 'save', 'came', 'sayings', 'world', 'listens', 'believe', 'don’t', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 48, 'He who rejects me, and doesn’t receive my sayings, has one who judges him. The word that I spoke, the same will judge him in the last day.', 'John 12:48', 'WEB', ARRAY['General']::TEXT[], ARRAY['judge', 'will', 'sayings', 'word', 'spoke', 'same', 'receive', 'judges', 'last', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 49, 'For I spoke not from myself, but the Father who sent me, he gave me a commandment, what I should say, and what I should speak.', 'John 12:49', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'what', 'should', 'commandment', 'myself', 'spoke', 'father', 'speak', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_12}', 50, 'I know that his commandment is eternal life. The things therefore which I speak, even as the Father has said to me, so I speak.”', 'John 12:50', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['things', 'therefore', 'life', 'commandment', 'which', 'know', 'even', 'said', 'father', 'that']::TEXT[], NOW());

-- John Chapter 13 (38 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 1, 'Now before the feast of the Passover, Jesus, knowing that his time had come that he would depart from this world to the Father, having loved his own who were in the world, he loved them to the end.', 'John 13:1', 'WEB', ARRAY['Love']::TEXT[], ARRAY['passover', 'loved', 'time', 'depart', 'jesus', 'would', 'feast', 'knowing', 'this', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 2, 'During supper, the devil having already put into the heart of Judas Iscariot, Simon’s son, to betray him,', 'John 13:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['iscariot', 'simon’s', 'judas', 'already', 'supper', 'having', 'betray', 'heart', 'devil']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 3, 'Jesus, knowing that the Father had given all things into his hands, and that he came from God, and was going to God,', 'John 13:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'going', 'jesus', 'given', 'came', 'knowing', 'father', 'that', 'hands']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 4, 'arose from supper, and laid aside his outer garments. He took a towel, and wrapped a towel around his waist.', 'John 13:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['wrapped', 'waist', 'garments', 'took', 'around', 'arose', 'outer', 'towel', 'aside', 'supper']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 5, 'Then he poured water into the basin, and began to wash the disciples’ feet, and to wipe them with the towel that was wrapped around him.', 'John 13:5', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['wrapped', 'wash', 'feet', 'around', 'them', 'wipe', 'towel', 'began', 'basin', 'water']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 6, 'Then he came to Simon Peter. He said to him, “Lord, do you wash my feet?”', 'John 13:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['wash', '“lord', 'feet', 'peter', 'said', 'simon', 'then', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 7, 'Jesus answered him,
“You don’t know what I am doing now, but you will understand later.”', 'John 13:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', 'jesus', 'will', 'know', 'later', 'understand', '“you', 'doing', 'don’t', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 8, 'Peter said to him, “You will never wash my feet!”
Jesus answered him,
“If I don’t wash you, you have no part with me.”', 'John 13:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['wash', 'feet', 'jesus', 'will', 'never', 'peter', '“you', 'said', 'have', 'part']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 9, 'Simon Peter said to him, “Lord, not my feet only, but also my hands and my head!”', 'John 13:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['“lord', 'feet', 'only', 'peter', 'said', 'also', 'simon', 'head', 'hands']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 10, 'Jesus said to him,
“Someone who has bathed only needs to have his feet washed, but is completely clean. You are clean, but not all of you.”', 'John 13:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['clean', 'washed', 'bathed', 'feet', 'jesus', 'only', 'completely', 'said', 'have', 'needs']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 11, 'For he knew him who would betray him, therefore he said,
“You are not all clean.”', 'John 13:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['clean', 'therefore', 'knew', 'would', '“you', 'said', 'betray']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 12, 'So when he had washed their feet, put his outer garment back on, and sat down again, he said to them,
“Do you know what I have done to you?', 'John 13:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'garment', 'what', 'washed', 'feet', 'done', 'them', 'know', 'outer', 'back']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 13, 'You call me, ‘Teacher’ and ‘Lord.’ You say so correctly, for so I am.', 'John 13:13', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['call', 'correctly', '‘lord', '‘teacher’']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 14, 'If I then, the Lord and the Teacher, have washed your feet, you also ought to wash one another’s feet.', 'John 13:14', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['wash', 'teacher', 'washed', 'ought', 'feet', 'have', 'also', 'your', 'another’s', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 15, 'For I have given you an example, that you also should do as I have done to you.', 'John 13:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['should', 'done', 'given', 'example', 'have', 'also', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 16, 'Most certainly I tell you, a servant is not greater than his lord, neither one who is sent greater than he who sent him.', 'John 13:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'than', 'tell', 'lord', 'sent', 'servant', 'neither', 'greater', 'certainly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 17, 'If you know these things, blessed are you if you do them.', 'John 13:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'these', 'know', 'blessed', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 18, 'I don’t speak concerning all of you. I know whom I have chosen. But that the Scripture may be fulfilled, ‘He who eats bread with me has lifted up his heel against me.’', 'John 13:18', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['eats', 'heel', 'chosen', 'fulfilled', 'know', 'lifted', 'have', 'against', 'that', 'speak']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 19, 'From now on, I tell you before it happens, that when it happens, you may believe that I am he.', 'John 13:19', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['happens', 'believe', 'tell', 'when', 'that', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 20, 'Most certainly I tell you, he who receives whomever I send, receives me; and he who receives me, receives him who sent me.”', 'John 13:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'send', 'tell', 'certainly', 'sent', 'whomever', 'receives']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 21, 'When Jesus had said this, he was troubled in spirit, and testified,
“Most certainly I tell you that one of you will betray me.”', 'John 13:21', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'tell', 'jesus', 'will', 'testified', 'troubled', '“most', 'this', 'said', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 22, 'The disciples looked at one another, perplexed about whom he spoke.', 'John 13:22', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['looked', 'perplexed', 'another', 'spoke', 'disciples', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 23, 'One of his disciples, whom Jesus loved, was at the table, leaning against Jesus’ breast.', 'John 13:23', 'WEB', ARRAY['Love', 'Discipleship']::TEXT[], ARRAY['jesus’', 'jesus', 'leaning', 'table', 'against', 'loved', 'breast', 'disciples', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 24, 'Simon Peter therefore beckoned to him, and said to him, “Tell us who it is of whom he speaks.”', 'John 13:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['beckoned', 'therefore', 'whom', 'speaks', 'peter', 'said', 'simon', '“tell']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 25, 'He, leaning back, as he was, on Jesus’ breast, asked him, “Lord, who is it?”', 'John 13:25', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', '“lord', 'jesus’', 'leaning', 'back', 'breast']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 26, 'Jesus therefore answered,
“It is he to whom I will give this piece of bread when I have dipped it.” So when he had dipped the piece of bread, he gave it to Judas, the son of Simon Iscariot.', 'John 13:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['iscariot', 'gave', 'therefore', 'answered', 'piece', 'judas', 'jesus', 'will', 'give', 'dipped']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 27, 'After the piece of bread, then Satan entered into him.
Then Jesus said to him,
“What you do, do quickly.”', 'John 13:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['“what', 'piece', 'after', 'entered', 'jesus', 'said', 'satan', 'then', 'bread', 'quickly']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 28, 'Now no man at the table knew why he said this to him.', 'John 13:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['table', 'this', 'said', 'knew']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 29, 'For some thought, because Judas had the money box, that Jesus said to him, “Buy what things we need for the feast,” or that he should give something to the poor.', 'John 13:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['something', 'thought', 'things', 'need', '“buy', 'what', 'judas', 'because', 'jesus', 'money']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 30, 'Therefore having received that morsel, he went out immediately. It was night.', 'John 13:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'went', 'night', 'received', 'immediately', 'that', 'having', 'morsel']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 31, 'When he had gone out, Jesus said,
“Now the Son of Man has been glorified, and God has been glorified in him.', 'John 13:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'gone', 'jesus', 'said', 'glorified', 'when', '“now']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 32, 'If God has been glorified in him, God will also glorify him in himself, and he will glorify him immediately.', 'John 13:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'will', 'himself', 'glorified', 'immediately', 'also', 'glorify']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 33, 'Little children, I will be with you a little while longer. You will seek me, and as I said to the Jews, ‘Where I am going, you can’t come,’ so now I tell you.', 'John 13:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['children', 'seek', 'jews', 'going', 'can’t', 'will', 'tell', '‘where', 'said', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 34, 'A new commandment I give to you, that you love one another. Just as I have loved you, you also love one another.', 'John 13:34', 'WEB', ARRAY['Love']::TEXT[], ARRAY['just', 'loved', 'love', 'another', 'commandment', 'give', 'have', 'also', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 35, 'By this everyone will know that you are my disciples, if you have love for one another.”', 'John 13:35', 'WEB', ARRAY['Love', 'Discipleship']::TEXT[], ARRAY['love', 'another', 'will', 'know', 'this', 'everyone', 'have', 'that', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 36, 'Simon Peter said to him, “Lord, where are you going?”
Jesus answered,
“Where I am going, you can’t follow now, but you will follow afterwards.”', 'John 13:36', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['afterwards', '“lord', 'going', '“where', 'jesus', 'can’t', 'will', 'peter', 'said', 'follow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 37, 'Peter said to him, “Lord, why can’t I follow you now? I will lay down my life for you.”', 'John 13:37', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['“lord', 'can’t', 'life', 'will', 'peter', 'said', 'follow', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_13}', 38, 'Jesus answered him,
“Will you lay down your life for me? Most certainly I tell you, the rooster won’t crow until you have denied me three times.', 'John 13:38', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'times', 'down', 'tell', 'life', 'jesus', 'until', 'have', 'denied', 'your']::TEXT[], NOW());

-- John Chapter 14 (31 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 1, '“Don’t let your heart be troubled. Believe in God. Believe also in me.', 'John 14:1', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['“don’t', 'troubled', 'also', 'your', 'believe', 'heart']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 2, 'In my Father’s house are many homes. If it weren’t so, I would have told you. I am going to prepare a place for you.', 'John 14:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['house', 'homes', 'father’s', 'going', 'would', 'weren’t', 'place', 'many', 'have', 'told']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 3, 'If I go and prepare a place for you, I will come again, and will receive you to myself; that where I am, you may be there also.', 'John 14:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['myself;', 'will', 'where', 'place', 'there', 'come', 'receive', 'also', 'that', 'prepare']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 4, 'Where I go, you know, and you know the way.”', 'John 14:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['where', 'know']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 5, 'Thomas said to him, “Lord, we don’t know where you are going. How can we know the way?”', 'John 14:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['“lord', 'going', 'know', 'said', 'thomas', 'where', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 6, 'Jesus said to him,
“I am the way, the truth, and the life. No one comes to the Father, except through me.', 'John 14:6', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['except', 'life', 'jesus', 'comes', 'said', 'father', 'truth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 7, 'If you had known me, you would have known my Father also. From now on, you know him, and have seen him.”', 'John 14:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['seen', 'would', 'known', 'know', 'have', 'also', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 8, 'Philip said to him, “Lord, show us the Father, and that will be enough for us.”', 'John 14:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['“lord', 'will', 'show', 'enough', 'said', 'father', 'philip', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 9, 'Jesus said to him,
“Have I been with you such a long time, and do you not know me, Philip? He who has seen me has seen the Father. How do you say, ‘Show us the Father?’', 'John 14:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'time', 'seen', 'jesus', 'know', 'said', 'father', 'philip', 'such', 'long']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 10, 'Don’t you believe that I am in the Father, and the Father in me? The words that I tell you, I speak not from myself; but the Father who lives in me does his works.', 'John 14:10', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['myself;', 'does', 'tell', 'lives', 'speak', 'words', 'father', 'works', 'that', 'believe']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 11, 'Believe me that I am in the Father, and the Father in me; or else believe me for the very works’ sake.', 'John 14:11', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['else', 'very', 'father', 'that', 'believe', 'works’', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 12, 'Most certainly I tell you, he who believes in me, the works that I do, he will do also; and he will do greater works than these, because I am going to my Father.', 'John 14:12', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['most', 'than', 'going', 'tell', 'because', 'will', 'these', 'believes', 'works', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 13, 'Whatever you will ask in my name, that will I do, that the Father may be glorified in the Son.', 'John 14:13', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['whatever', 'name', 'will', 'glorified', 'father', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 14, 'If you will ask anything in my name, I will do it.', 'John 14:14', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['anything', 'will', 'name']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 15, 'If you love me, keep my commandments.', 'John 14:15', 'WEB', ARRAY['Love']::TEXT[], ARRAY['commandments', 'love', 'keep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 16, 'I will pray to the Father, and he will give you another Counselor,

that he may be with you forever,—', 'John 14:16', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['another', 'will', 'pray', 'give', 'forever', 'counselor', 'father', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 17, 'the Spirit of truth, whom the world can’t receive; for it doesn’t see him, neither knows him. You know him, for he lives with you, and will be in you.', 'John 14:17', 'WEB', ARRAY['Holy Spirit', 'Truth']::TEXT[], ARRAY['spirit', 'lives', 'can’t', 'doesn’t', 'will', 'knows', 'know', 'neither', 'world', 'receive;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 18, 'I will not leave you orphans. I will come to you.', 'John 14:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'come', 'leave', 'orphans']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 19, 'Yet a little while, and the world will see me no more; but you will see me. Because I live, you will live also.', 'John 14:19', 'WEB', ARRAY['General']::TEXT[], ARRAY['because', 'will', 'live', 'more;', 'while', 'also', 'world', 'little']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 20, 'In that day you will know that I am in my Father, and you in me, and I in you.', 'John 14:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['that', 'will', 'know', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 21, 'One who has my commandments, and keeps them, that person is one who loves me. One who loves me will be loved by my Father, and I will love him, and will reveal myself to him.”', 'John 14:21', 'WEB', ARRAY['Love']::TEXT[], ARRAY['loved', 'love', 'will', 'reveal', 'myself', 'person', 'commandments', 'keeps', 'loves', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 22, 'Judas (not Iscariot) said to him, “Lord, what has happened that you are about to reveal yourself to us, and not to the world?”', 'John 14:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['what', '“lord', 'judas', 'reveal', 'yourself', 'said', '(not', 'iscariot)', 'world', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 23, 'Jesus answered him,
“If a man loves me, he will keep my word. My Father will love him, and we will come to him, and make our home with him.', 'John 14:23', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'jesus', 'will', 'word', 'make', 'loves', 'come', 'father', 'keep', 'home']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 24, 'He who doesn’t love me doesn’t keep my words. The word which you hear isn’t mine, but the Father’s who sent me.', 'John 14:24', 'WEB', ARRAY['Love']::TEXT[], ARRAY['isn’t', 'love', 'mine', 'father’s', 'which', 'hear', 'word', 'words', 'keep', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 25, 'I have said these things to you, while still living with you.', 'John 14:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'these', 'still', 'said', 'have', 'while', 'living']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 26, 'But the Counselor, the Holy Spirit, whom the Father will send in my name, he will teach you all things, and will remind you of all that I said to you.', 'John 14:26', 'WEB', ARRAY['Teaching', 'Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', 'teach', 'things', 'send', 'name', 'will', 'counselor', 'said', 'remind', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 27, 'Peace I leave with you. My peace I give to you; not as the world gives, give I to you. Don’t let your heart be troubled, neither let it be fearful.', 'John 14:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['you;', 'leave', 'give', 'gives', 'troubled', 'peace', 'your', 'neither', 'world', 'fearful']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 28, 'You heard how I told you, ‘I go away, and I come to you.’ If you loved me, you would have rejoiced, because I said ‘I am going to my Father;’ for the Father is greater than I.', 'John 14:28', 'WEB', ARRAY['Love']::TEXT[], ARRAY['than', 'going', 'because', 'would', 'father;’', 'rejoiced', 'away', 'come', 'told', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 29, 'Now I have told you before it happens so that, when it happens, you may believe.', 'John 14:29', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['happens', 'believe', 'have', 'told', 'when', 'that', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 30, 'I will no more speak much with you, for the prince of the world comes, and he has nothing in me.', 'John 14:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['will', 'comes', 'prince', 'nothing', 'world', 'speak', 'more', 'much']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_14}', 31, 'But that the world may know that I love the Father, and as the Father commanded me, even so I do. Arise, let us go from here.', 'John 14:31', 'WEB', ARRAY['Love']::TEXT[], ARRAY['commanded', 'love', 'arise', 'know', 'even', 'father', 'world', 'that', 'here']::TEXT[], NOW());

-- John Chapter 15 (27 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 1, '“I am the true vine, and my Father is the farmer.', 'John 15:1', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['vine', 'true', 'farmer', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 2, 'Every branch in me that doesn’t bear fruit, he takes away. Every branch that bears fruit, he prunes, that it may bear more fruit.', 'John 15:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['prunes', 'fruit', 'more', 'away', 'every', 'takes', 'bear', 'that', 'branch', 'doesn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 3, 'You are already pruned clean because of the word which I have spoken to you.', 'John 15:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['clean', 'because', 'which', 'already', 'word', 'spoken', 'have', 'pruned']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 4, 'Remain in me, and I in you. As the branch can’t bear fruit by itself, unless it remains in the vine, so neither can you, unless you remain in me.', 'John 15:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['remain', 'unless', 'can’t', 'fruit', 'vine', 'remains', 'neither', 'itself', 'branch', 'bear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 5, 'I am the vine. You are the branches. He who remains in me, and I in him, the same bears much fruit, for apart from me you can do nothing.', 'John 15:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['vine', 'fruit', 'remains', 'apart', 'same', 'nothing', 'branches', 'much', 'bears']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 6, 'If a man doesn’t remain in me, he is thrown out as a branch, and is withered; and they gather them, throw them into the fire, and they are burned.', 'John 15:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['remain', 'fire', 'they', 'withered;', 'gather', 'them', 'throw', 'burned', 'thrown', 'branch']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 7, 'If you remain in me, and my words remain in you, you will ask whatever you desire, and it will be done for you.', 'John 15:7', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['remain', 'whatever', 'done', 'will', 'words', 'desire']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 8, '“In this is my Father glorified, that you bear much fruit; and so you will be my disciples.', 'John 15:8', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['fruit;', 'will', 'this', 'glorified', 'father', 'that', 'disciples', 'bear', 'much']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 9, 'Even as the Father has loved me, I also have loved you. Remain in my love.', 'John 15:9', 'WEB', ARRAY['Love']::TEXT[], ARRAY['remain', 'love', 'even', 'have', 'also', 'father', 'loved']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 10, 'If you keep my commandments, you will remain in my love; even as I have kept my Father’s commandments, and remain in his love.', 'John 15:10', 'WEB', ARRAY['Love']::TEXT[], ARRAY['remain', 'love;', 'love', 'father’s', 'will', 'even', 'commandments', 'have', 'keep', 'kept']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 11, 'I have spoken these things to you, that my joy may remain in you, and that your joy may be made full.', 'John 15:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['remain', 'things', 'these', 'spoken', 'full', 'have', 'your', 'that', 'made']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 12, '“This is my commandment, that you love one another, even as I have loved you.', 'John 15:12', 'WEB', ARRAY['Love']::TEXT[], ARRAY['loved', 'love', 'another', 'commandment', 'even', 'have', 'that', '“this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 13, 'Greater love has no one than this, that someone lay down his life for his friends.', 'John 15:13', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'than', 'life', 'friends', 'this', 'someone', 'that', 'greater', 'down']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 14, 'You are my friends, if you do whatever I command you.', 'John 15:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['command', 'friends', 'whatever']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 15, 'No longer do I call you servants, for the servant doesn’t know what his lord does. But I have called you friends, for everything that I heard from my Father, I have made known to you.', 'John 15:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'made', 'what', 'does', 'call', 'friends', 'know', 'known', 'have', 'longer']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 16, 'You didn’t choose me, but I chose you, and appointed you, that you should go and bear fruit, and that your fruit should remain; that whatever you will ask of the Father in my name, he may give it to you.', 'John 15:16', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['whatever', 'appointed', 'should', 'fruit', 'name', 'will', 'give', 'choose', 'didn’t', 'chose']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 17, '“I command these things to you, that you may love one another.', 'John 15:17', 'WEB', ARRAY['Love']::TEXT[], ARRAY['things', 'command', 'love', 'another', 'these', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 18, 'If the world hates you, you know that it has hated me before it hated you.', 'John 15:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['know', 'that', 'before', 'world', 'hated', 'hates']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 19, 'If you were of the world, the world would love its own. But because you are not of the world, since I chose you out of the world, therefore the world hates you.', 'John 15:19', 'WEB', ARRAY['Love']::TEXT[], ARRAY['love', 'therefore', 'because', 'would', 'since', 'chose', 'world', 'were', 'hates']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 20, 'Remember the word that I said to you: ‘A servant is not greater than his lord.’
If they persecuted me, they will also persecute you. If they kept my word, they will also keep yours.', 'John 15:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['you:', 'remember', 'than', 'they', 'will', 'kept', 'word', 'yours', 'said', 'persecuted']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 21, 'But all these things will they do to you for my name’s sake, because they don’t know him who sent me.', 'John 15:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'name’s', 'they', 'because', 'these', 'will', 'know', 'sent', 'don’t', 'sake']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 22, 'If I had not come and spoken to them, they would not have had sin; but now they have no excuse for their sin.', 'John 15:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'their', 'would', 'sin;', 'spoken', 'have', 'come', 'excuse', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 23, 'He who hates me, hates my Father also.', 'John 15:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['also', 'father', 'hates']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 24, 'If I hadn’t done among them the works which no one else did, they wouldn’t have had sin. But now have they seen and also hated both me and my Father.', 'John 15:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'seen', 'done', 'which', 'else', 'both', 'among', 'have', 'wouldn’t', 'hadn’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 25, 'But this happened so that the word may be fulfilled which was written in their law, ‘They hated me without a cause.’', 'John 15:25', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['written', 'their', 'without', 'which', 'cause', 'fulfilled', 'word', '‘they', 'this', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 26, '“When the Counselor
has come, whom I will send to you from the Father, the Spirit of truth, who proceeds from the Father, he will testify about me.', 'John 15:26', 'WEB', ARRAY['Holy Spirit', 'Truth', 'Witness']::TEXT[], ARRAY['spirit', 'send', 'will', 'proceeds', 'counselor', 'come', 'father', '“when', 'testify', 'truth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_15}', 27, 'You will also testify, because you have been with me from the beginning.', 'John 15:27', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['been', 'beginning', 'because', 'will', 'have', 'also', 'testify']::TEXT[], NOW());

-- John Chapter 16 (33 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 1, '“I have said these things to you so that you wouldn’t be caused to stumble.', 'John 16:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'caused', 'these', 'stumble', 'said', 'have', 'wouldn’t', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 2, 'They will put you out of the synagogues. Yes, the time comes that whoever kills you will think that he offers service to God.', 'John 16:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['synagogues', 'they', 'time', 'think', 'will', 'comes', 'kills', 'whoever', 'service', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 3, 'They will do these things
because they have not known the Father, nor me.', 'John 16:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'because', 'will', 'these', 'known', 'have', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 4, 'But I have told you these things, so that when the time comes, you may remember that I told you about them. I didn’t tell you these things from the beginning, because I was with you.', 'John 16:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'remember', 'time', 'beginning', 'tell', 'because', 'these', 'comes', 'didn’t', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 5, 'But now I am going to him who sent me, and none of you asks me, ‘Where are you going?’', 'John 16:5', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['going', 'none', '‘where', 'asks', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 6, 'But because I have told you these things, sorrow has filled your heart.', 'John 16:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'because', 'these', 'filled', 'have', 'told', 'your', 'heart', 'sorrow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 7, 'Nevertheless I tell you the truth: It is to your advantage that I go away, for if I don’t go away, the Counselor won’t come to you. But if I go, I will send him to you.', 'John 16:7', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['send', 'tell', 'will', 'counselor', 'away', 'come', 'your', 'nevertheless', 'that', 'truth:']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 8, 'When he has come, he will convict the world about sin, about righteousness, and about judgment;', 'John 16:8', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['righteousness', 'judgment;', 'convict', 'will', 'come', 'when', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 9, 'about sin, because they don’t believe in me;', 'John 16:9', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['believe', 'they', 'don’t', 'because']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 10, 'about righteousness, because I am going to my Father, and you won’t see me any more;', 'John 16:10', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['righteousness', 'going', 'because', 'more;', 'father', 'won’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 11, 'about judgment, because the prince of this world has been judged.', 'John 16:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'because', 'prince', 'this', 'judgment', 'world', 'judged']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 12, '“I have yet many things to tell you, but you can’t bear them now.', 'John 16:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'tell', 'can’t', 'many', 'have', 'them', 'bear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 13, 'However when he, the Spirit of truth, has come, he will guide you into all truth, for he will not speak from himself; but whatever he hears, he will speak. He will declare to you things that are coming.', 'John 16:13', 'WEB', ARRAY['Holy Spirit', 'Truth']::TEXT[], ARRAY['spirit', 'things', 'whatever', 'coming', 'will', 'declare', 'himself;', 'come', 'however', 'hears']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 14, 'He will glorify me, for he will take from what is mine, and will declare it to you.', 'John 16:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['mine', 'what', 'take', 'will', 'declare', 'glorify']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 15, 'All things whatever the Father has are mine; therefore I said that he takes
of mine, and will declare it to you.', 'John 16:15', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'therefore', 'whatever', 'mine', 'will', 'declare', 'said', 'mine;', 'father', 'takes']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 16, 'A little while, and you will not see me. Again a little while, and you will see me.”', 'John 16:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['little', 'while', 'will', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 17, 'Some of his disciples therefore said to one another, “What is this that he says to us,
‘A little while, and you won’t see me, and again a little while, and you will see me;’ and,
‘Because I go to the Father’?”', 'John 16:17', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['therefore', '“what', 'another', 'will', '‘because', 'this', 'said', 'some', 'while', 'says']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 18, 'They said therefore, “What is this that he says,
‘A little while’? We don’t know what he is saying.”', 'John 16:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', '“what', 'therefore', 'what', 'saying', 'while’', 'know', 'this', 'said', 'says']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 19, 'Therefore Jesus perceived that they wanted to ask him, and he said to them,
“Do you inquire among yourselves concerning this, that I said, ‘A little while, and you won’t see me, and again a little while, and you will see me?’', 'John 16:19', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['they', 'therefore', 'wanted', 'jesus', 'inquire', 'will', 'among', 'said', 'concerning', 'this']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 20, 'Most certainly I tell you, that you will weep and lament, but the world will rejoice. You will be sorrowful, but your sorrow will be turned into joy.', 'John 16:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['most', 'weep', 'tell', 'rejoice', 'will', 'sorrowful', 'turned', 'lament', 'your', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 21, 'A woman, when she gives birth, has sorrow, because her time has come. But when she has delivered the child, she doesn’t remember the anguish any more, for the joy that a human being is born into the world.', 'John 16:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'delivered', 'gives', 'doesn’t', 'sorrow', 'remember', 'child', 'human', 'being', 'come']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 22, 'Therefore you now have sorrow, but I will see you again, and your heart will rejoice, and no one will take your joy away from you.', 'John 16:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'rejoice', 'will', 'take', 'have', 'away', 'your', 'heart', 'again', 'sorrow']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 23, '“In that day you will ask me no questions. Most certainly I tell you, whatever you may ask of the Father in my name, he will give it to you.', 'John 16:23', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['most', 'whatever', 'name', 'tell', 'will', 'give', 'father', 'that', 'certainly', 'questions']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 24, 'Until now, you have asked nothing in my name. Ask, and you will receive, that your joy may be made full.', 'John 16:24', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['asked', 'name', 'will', 'until', 'full', 'have', 'receive', 'your', 'nothing', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 25, 'I have spoken these things to you in figures of speech. But the time is coming when I will no more speak to you in figures of speech, but will tell you plainly about the Father.', 'John 16:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'figures', 'speech', 'time', 'coming', 'tell', 'these', 'will', 'spoken', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 26, 'In that day you will ask in my name; and I don’t say to you, that I will pray to the Father for you,', 'John 16:26', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['will', 'pray', 'name;', 'father', 'that', 'don’t']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 27, 'for the Father himself loves you, because you have loved me, and have believed that I came from God.', 'John 16:27', 'WEB', ARRAY['Faith', 'Love']::TEXT[], ARRAY['because', 'himself', 'have', 'loves', 'believed', 'father', 'that', 'loved', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 28, 'I came from the Father, and have come into the world. Again, I leave the world, and go to the Father.”', 'John 16:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['leave', 'have', 'come', 'father', 'world', 'again', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 29, 'His disciples said to him, “Behold, now you are speaking plainly, and using no figures of speech.', 'John 16:29', 'WEB', ARRAY['Kingdom', 'Discipleship']::TEXT[], ARRAY['figures', 'speech', 'said', 'speaking', 'plainly', 'disciples', 'using', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 30, 'Now we know that you know all things, and don’t need for anyone to question you. By this we believe that you came from God.”', 'John 16:30', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['things', 'need', 'anyone', 'question', 'know', 'this', 'that', 'believe', 'don’t', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 31, 'Jesus answered them,
“Do you now believe?', 'John 16:31', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['jesus', 'them', 'believe', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 32, 'Behold, the time is coming, yes, and has now come, that you will be scattered, everyone to his own place, and you will leave me alone. Yet I am not alone, because the Father is with me.', 'John 16:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['time', 'leave', 'coming', 'because', 'will', 'place', 'scattered', 'everyone', 'come', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_16}', 33, 'I have told you these things, that in me you may have peace. In the world you have oppression; but cheer up! I have overcome the world.”', 'John 16:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'these', 'peace', 'have', 'cheer', 'told', 'world', 'that', 'overcome', 'oppression;']::TEXT[], NOW());

-- John Chapter 17 (26 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 1, 'Jesus said these things, and lifting up his eyes to heaven, he said,
“Father, the time has come. Glorify your Son, that your Son may also glorify you;', 'John 17:1', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['things', 'time', 'you;', '“father', 'jesus', 'these', 'lifting', 'said', 'come', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 2, 'even as you gave him authority over all flesh, so he will give eternal life to all whom you have given him.', 'John 17:2', 'WEB', ARRAY['Salvation']::TEXT[], ARRAY['over', 'gave', 'life', 'given', 'authority', 'will', 'give', 'whom', 'even', 'flesh']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 3, 'This is eternal life, that they should know you, the only true God, and him whom you sent, Jesus Christ.', 'John 17:3', 'WEB', ARRAY['Salvation', 'Truth']::TEXT[], ARRAY['they', 'should', 'life', 'jesus', 'whom', 'know', 'only', 'this', 'true', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 4, 'I glorified you on the earth. I have accomplished the work which you have given me to do.', 'John 17:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'given', 'work', 'earth', 'glorified', 'have', 'accomplished']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 5, 'Now, Father, glorify me with your own self with the glory which I had with you before the world existed.', 'John 17:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['which', 'self', 'existed', 'father', 'glorify', 'your', 'world', 'before', 'glory']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 6, 'I revealed your name to the people whom you have given me out of the world. They were yours, and you have given them to me. They have kept your word.', 'John 17:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'name', 'given', 'word', 'yours', 'have', 'your', 'world', 'revealed', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 7, 'Now they have known that all things whatever you have given me are from you,', 'John 17:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'whatever', 'given', 'known', 'have', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 8, 'for the words which you have given me I have given to them, and they received them, and knew for sure that I came from you, and they have believed that you sent me.', 'John 17:8', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'knew', 'which', 'given', 'sent', 'have', 'received', 'believed', 'words', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 9, 'I pray for them. I don’t pray for the world, but for those whom you have given me, for they are yours.', 'John 17:9', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['they', 'given', 'pray', 'those', 'yours', 'have', 'world', 'them', 'don’t', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 10, 'All things that are mine are yours, and yours are mine, and I am glorified in them.', 'John 17:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'mine', 'glorified', 'that', 'them', 'yours']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 11, 'I am no more in the world, but these are in the world, and I am coming to you. Holy Father, keep them through your name which you have given me, that they may be one, even as we are.', 'John 17:11', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['they', 'name', 'coming', 'which', 'given', 'these', 'even', 'have', 'keep', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 12, 'While I was with them in the world, I kept them in your name. Those whom you have given me I have kept. None of them is lost, except the son of destruction, that the Scripture might be fulfilled.', 'John 17:12', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'lost', 'destruction', 'name', 'none', 'except', 'given', 'fulfilled', 'those', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 13, 'But now I come to you, and I say these things in the world, that they may have my joy made full in themselves.', 'John 17:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['things', 'they', 'these', 'full', 'have', 'come', 'that', 'world', 'made', 'themselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 14, 'I have given them your word. The world hated them, because they are not of the world, even as I am not of the world.', 'John 17:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'because', 'given', 'word', 'even', 'have', 'your', 'world', 'hated', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 15, 'I pray not that you would take them from the world, but that you would keep them from the evil one.', 'John 17:15', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['would', 'pray', 'take', 'world', 'that', 'evil', 'them', 'keep']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 16, 'They are not of the world even as I am not of the world.', 'John 17:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['world', 'they', 'even']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 17, 'Sanctify them in your truth. Your word is truth.', 'John 17:17', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['sanctify', 'word', 'your', 'them', 'truth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 18, 'As you sent me into the world, even so I have sent them into the world.', 'John 17:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['even', 'have', 'world', 'sent', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 19, 'For their sakes I sanctify myself, that they themselves also may be sanctified in truth.', 'John 17:19', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['sakes', 'their', 'they', 'sanctify', 'sanctified', 'myself', 'also', 'that', 'truth', 'themselves']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 20, 'Not for these only do I pray, but for those also who will believe in me through their word,', 'John 17:20', 'WEB', ARRAY['Faith', 'Prayer']::TEXT[], ARRAY['their', 'these', 'pray', 'will', 'only', 'word', 'those', 'also', 'believe']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 21, 'that they may all be one; even as you, Father, are in me, and I in you, that they also may be one in us; that the world may believe that you sent me.', 'John 17:21', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['they', 'one;', 'even', 'also', 'father', 'world', 'that', 'believe', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 22, 'The glory which you have given me, I have given to them; that they may be one, even as we are one;', 'John 17:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'which', 'given', 'one;', 'even', 'have', 'them;', 'that', 'glory']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 23, 'I in them, and you in me, that they may be perfected into one; that the world may know that you sent me, and loved them, even as you loved me.', 'John 17:23', 'WEB', ARRAY['Love']::TEXT[], ARRAY['loved', 'they', 'one;', 'know', 'sent', 'even', 'world', 'that', 'perfected', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 24, 'Father, I desire that they also whom you have given me be with me where I am, that they may see my glory, which you have given me, for you loved me before the foundation of the world.', 'John 17:24', 'WEB', ARRAY['Love']::TEXT[], ARRAY['loved', 'they', 'which', 'given', 'have', 'also', 'father', 'world', 'that', 'before']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 25, 'Righteous Father, the world hasn’t known you, but I knew you; and these knew that you sent me.', 'John 17:25', 'WEB', ARRAY['Righteousness']::TEXT[], ARRAY['you;', 'knew', 'these', 'known', 'hasn’t', 'righteous', 'father', 'that', 'world', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_17}', 26, 'I made known to them your name, and will make it known; that the love with which you loved me may be in them, and I in them.”', 'John 17:26', 'WEB', ARRAY['Love']::TEXT[], ARRAY['loved', 'love', 'name', 'which', 'will', 'known', 'make', 'your', 'known;', 'that']::TEXT[], NOW());

-- John Chapter 18 (40 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 1, 'When Jesus had spoken these words, he went out with his disciples over the brook Kidron, where there was a garden, into which he and his disciples entered.', 'John 18:1', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['over', 'went', 'which', 'jesus', 'these', 'entered', 'spoken', 'garden', 'there', 'words']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 2, 'Now Judas, who betrayed him, also knew the place, for Jesus often met there with his disciples.', 'John 18:2', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['knew', 'judas', 'jesus', 'place', 'there', 'also', 'often', 'betrayed', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 3, 'Judas then, having taken a detachment of soldiers and officers from the chief priests and the Pharisees, came there with lanterns, torches, and weapons.', 'John 18:3', 'WEB', ARRAY['General']::TEXT[], ARRAY['detachment', 'taken', 'officers', 'judas', 'lanterns', 'priests', 'torches', 'weapons', 'there', 'soldiers']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 4, 'Jesus therefore, knowing all the things that were happening to him, went out, and said to them,
“Who are you looking for?”', 'John 18:4', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['things', 'therefore', 'went', 'jesus', 'knowing', 'said', 'looking', 'that', 'happening', '“who']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 5, 'They answered him, “Jesus of Nazareth.”
Jesus said to them,
“I am he.”
Judas also, who betrayed him, was standing with them.', 'John 18:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'betrayed', 'standing', 'judas', '“jesus', 'jesus', 'said', 'also', 'nazareth', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 6, 'When therefore he said to them,
“I am he,” they went backward, and fell to the ground.', 'John 18:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'therefore', 'went', 'ground', 'said', 'fell', 'when', 'them', 'backward']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 7, 'Again therefore he asked them,
“Who are you looking for?”
They said, “Jesus of Nazareth.”', 'John 18:7', 'WEB', ARRAY['Prayer', 'Kingdom']::TEXT[], ARRAY['asked', 'they', 'therefore', '“jesus', 'said', 'looking', 'nazareth', '“who', 'them', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 8, 'Jesus answered,
“I told you that I am he. If therefore you seek me, let these go their way,”', 'John 18:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['their', 'therefore', 'seek', 'jesus', 'these', 'told', 'that', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 9, 'that the word might be fulfilled which he spoke,
“Of those whom you have given me, I have lost none.”', 'John 18:9', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'lost', 'none', 'which', 'given', 'fulfilled', 'word', 'spoke', 'those', 'have']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 10, 'Simon Peter therefore, having a sword, drew it, and struck the high priest’s servant, and cut off his right ear. The servant’s name was Malchus.', 'John 18:10', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest’s', 'drew', 'sword', 'therefore', 'name', 'malchus', 'servant’s', 'high', 'peter', 'right']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 11, 'Jesus therefore said to Peter,
“Put the sword into its sheath. The cup which the Father has given me, shall I not surely drink it?”', 'John 18:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['sheath', 'surely', 'sword', 'therefore', 'which', 'jesus', 'given', 'shall', 'drink', 'peter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 12, 'So the detachment, the commanding officer, and the officers of the Jews, seized Jesus and bound him,', 'John 18:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['seized', 'officer', 'detachment', 'officers', 'jews', 'jesus', 'bound', 'commanding']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 13, 'and led him to Annas first, for he was father-in-law to Caiaphas, who was high priest that year.', 'John 18:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'priest', 'high', 'caiaphas', 'annas', 'father-in-law', 'year', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 14, 'Now it was Caiaphas who advised the Jews that it was expedient that one man should perish for the people.', 'John 18:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['jews', 'should', 'advised', 'caiaphas', 'perish', 'that', 'people', 'expedient']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 15, 'Simon Peter followed Jesus, as did another disciple. Now that disciple was known to the high priest, and entered in with Jesus into the court of the high priest;', 'John 18:15', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['followed', 'priest', 'another', 'entered', 'jesus', 'high', 'priest;', 'disciple', 'known', 'peter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 16, 'but Peter was standing at the door outside. So the other disciple, who was known to the high priest, went out and spoke to her who kept the door, and brought in Peter.', 'John 18:16', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['priest', 'standing', 'went', 'high', 'disciple', 'known', 'peter', 'spoke', 'other', 'brought']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 17, 'Then the maid who kept the door said to Peter, “Are you also one of this man’s disciples?”
He said, “I am not.”', 'John 18:17', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['“are', 'peter', 'maid', 'this', 'said', 'also', 'door', 'then', 'disciples', 'kept']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 18, 'Now the servants and the officers were standing there, having made a fire of coals, for it was cold. They were warming themselves. Peter was with them, standing and warming himself.', 'John 18:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'fire', 'they', 'standing', 'coals', 'officers', 'themselves', 'warming', 'himself', 'peter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 19, 'The high priest therefore asked Jesus about his disciples, and about his teaching.', 'John 18:19', 'WEB', ARRAY['Prayer', 'Teaching', 'Discipleship']::TEXT[], ARRAY['asked', 'priest', 'therefore', 'teaching', 'jesus', 'high', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 20, 'Jesus answered him,
“I spoke openly to the world. I always taught in synagogues, and in the temple, where the Jews always meet. I said nothing in secret.', 'John 18:20', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['synagogues', 'openly', 'jews', 'meet', 'secret', 'jesus', 'taught', 'spoke', 'temple', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 21, 'Why do you ask me? Ask those who have heard me what I said to them. Behold, these know the things which I said.”', 'John 18:21', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['things', 'what', 'which', 'these', 'know', 'those', 'said', 'have', 'heard', 'behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 22, 'When he had said this, one of the officers standing by slapped Jesus with his hand, saying, “Do you answer the high priest like that?”', 'John 18:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['slapped', 'priest', 'standing', 'officers', 'saying', 'jesus', 'high', 'this', 'said', 'hand']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 23, 'Jesus answered him,
“If I have spoken evil, testify of the evil; but if well, why do you beat me?”', 'John 18:23', 'WEB', ARRAY['Witness']::TEXT[], ARRAY['evil;', 'well', 'jesus', 'spoken', 'beat', 'have', 'testify', 'evil', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 24, 'Annas sent him bound to Caiaphas, the high priest.', 'John 18:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['priest', 'high', 'bound', 'caiaphas', 'annas', 'sent']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 25, 'Now Simon Peter was standing and warming himself. They said therefore to him, “You aren’t also one of his disciples, are you?”
He denied it, and said, “I am not.”', 'John 18:25', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'standing', 'therefore', 'warming', 'himself', 'peter', '“you', 'said', 'denied', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 26, 'One of the servants of the high priest, being a relative of him whose ear Peter had cut off, said, “Didn’t I see you in the garden with him?”', 'John 18:26', 'WEB', ARRAY['General']::TEXT[], ARRAY['servants', 'priest', 'high', 'whose', 'peter', '“didn’t', 'garden', 'being', 'said', 'relative']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 27, 'Peter therefore denied it again, and immediately the rooster crowed.', 'John 18:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'peter', 'immediately', 'denied', 'rooster', 'crowed', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 28, 'They led Jesus therefore from Caiaphas into the Praetorium. It was early, and they themselves didn’t enter into the Praetorium, that they might not be defiled, but might eat the Passover.', 'John 18:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['passover', 'might', 'they', 'therefore', 'defiled', 'jesus', 'early', 'caiaphas', 'didn’t', 'praetorium']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 29, 'Pilate therefore went out to them, and said, “What accusation do you bring against this man?”', 'John 18:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', '“what', 'went', 'bring', 'accusation', 'this', 'said', 'against', 'them', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 30, 'They answered him, “If this man weren’t an evildoer, we wouldn’t have delivered him up to you.”', 'John 18:30', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'evildoer', 'delivered', 'weren’t', 'this', 'have', 'wouldn’t', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 31, 'Pilate therefore said to them, “Take him yourselves, and judge him according to your law.”
Therefore the Jews said to him, “It is not lawful for us to put anyone to death,”', 'John 18:31', 'WEB', ARRAY['General']::TEXT[], ARRAY['anyone', 'therefore', 'judge', 'jews', 'lawful', 'death', 'yourselves', 'said', 'your', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 32, 'that the word of Jesus might be fulfilled, which he spoke, signifying by what kind of death he should die.', 'John 18:32', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'what', 'should', 'which', 'jesus', 'fulfilled', 'death', 'word', 'spoke', 'kind']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 33, 'Pilate therefore entered again into the Praetorium, called Jesus, and said to him, “Are you the King of the Jews?”', 'John 18:33', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['therefore', 'jews', 'entered', 'jesus', '“are', 'king', 'said', 'praetorium', 'again', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 34, 'Jesus answered him,
“Do you say this by yourself, or did others tell you about me?”', 'John 18:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['tell', 'jesus', 'others', 'yourself', 'this', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 35, 'Pilate answered, “I’m not a Jew, am I? Your own nation and the chief priests delivered you to me. What have you done?”', 'John 18:35', 'WEB', ARRAY['General']::TEXT[], ARRAY['nation', 'what', 'done', 'delivered', 'priests', 'have', 'your', '“i’m', 'pilate', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 36, 'Jesus answered,
“My Kingdom is not of this world. If my Kingdom were of this world, then my servants would fight, that I wouldn’t be delivered to the Jews. But now my Kingdom is not from here.”', 'John 18:36', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['servants', 'jews', 'here', 'jesus', 'would', 'delivered', 'this', 'that', 'wouldn’t', 'world']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 37, 'Pilate therefore said to him, “Are you a king then?”
Jesus answered,
“You say that I am a king. For this reason I have been born, and for this reason I have come into the world, that I should testify to the truth. Everyone who is of the truth listens to my voice.”', 'John 18:37', 'WEB', ARRAY['Kingdom', 'Truth', 'Witness']::TEXT[], ARRAY['voice', 'been', '“are', '“you', 'then', 'reason', 'answered', 'this', 'testify', 'listens']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 38, 'Pilate said to him, “What is truth?”
When he had said this, he went out again to the Jews, and said to them, “I find no basis for a charge against him.', 'John 18:38', 'WEB', ARRAY['Truth']::TEXT[], ARRAY['“what', 'truth', 'jews', 'went', 'find', 'charge', 'this', 'said', 'against', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 39, 'But you have a custom, that I should release someone to you at the Passover. Therefore, do you want me to release to you the King of the Jews?”', 'John 18:39', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['passover', 'want', 'therefore', 'jews', 'should', 'king', 'custom', 'have', 'someone', 'release']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_18}', 40, 'Then they all shouted again, saying, “Not this man, but Barabbas!” Now Barabbas was a robber.', 'John 18:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['barabbas', 'they', '“not', 'saying', 'robber', 'this', 'then', 'shouted', 'again']::TEXT[], NOW());

-- John Chapter 19 (42 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 1, 'So Pilate then took Jesus, and flogged him.', 'John 19:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'took', 'flogged', 'then', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 2, 'The soldiers twisted thorns into a crown, and put it on his head, and dressed him in a purple garment.', 'John 19:2', 'WEB', ARRAY['General']::TEXT[], ARRAY['twisted', 'garment', 'thorns', 'crown', 'soldiers', 'purple', 'head', 'dressed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 3, 'They kept saying, “Hail, King of the Jews!” and they kept slapping him.', 'John 19:3', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['slapping', 'they', 'jews', 'saying', 'king', '“hail', 'kept']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 4, 'Then Pilate went out again, and said to them, “Behold, I bring him out to you, that you may know that I find no basis for a charge against him.”', 'John 19:4', 'WEB', ARRAY['General']::TEXT[], ARRAY['find', 'went', 'bring', 'know', 'charge', 'said', 'against', 'basis', 'that', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 5, 'Jesus therefore came out, wearing the crown of thorns and the purple garment. Pilate said to them, “Behold, the man!”', 'John 19:5', 'WEB', ARRAY['General']::TEXT[], ARRAY['garment', 'therefore', 'thorns', 'wearing', 'jesus', 'crown', 'them', 'said', 'purple', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 6, 'When therefore the chief priests and the officers saw him, they shouted, saying, “Crucify! Crucify!”
Pilate said to them, “Take him yourselves, and crucify him, for I find no basis for a charge against him.”', 'John 19:6', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'officers', 'saying', 'charge', 'basis', 'them', 'chief', 'find', 'crucify', '“crucify']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 7, 'The Jews answered him, “We have a law, and by our law he ought to die, because he made himself the Son of God.”', 'John 19:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['ought', 'because', 'jews', 'himself', 'have', 'made', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 8, 'When therefore Pilate heard this saying, he was more afraid.', 'John 19:8', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', 'saying', 'more', 'this', 'afraid', 'heard', 'when', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 9, 'He entered into the Praetorium again, and said to Jesus, “Where are you from?” But Jesus gave him no answer.', 'John 19:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['gave', 'entered', '“where', 'jesus', 'said', 'praetorium', 'answer', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 10, 'Pilate therefore said to him, “Aren’t you speaking to me? Don’t you know that I have power to release you, and have power to crucify you?”', 'John 19:10', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['therefore', 'crucify', 'know', 'said', 'have', 'that', 'speaking', 'power', '“aren’t', 'release']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 11, 'Jesus answered,
“You would have no power at all against me, unless it were given to you from above. Therefore he who delivered me to you has greater sin.”', 'John 19:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['unless', 'therefore', 'jesus', 'would', 'given', 'above', 'delivered', '“you', 'have', 'against']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 12, 'At this, Pilate was seeking to release him, but the Jews cried out, saying, “If you release this man, you aren’t Caesar’s friend! Everyone who makes himself a king speaks against Caesar!”', 'John 19:12', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['caesar’s', 'seeking', 'jews', 'saying', 'makes', 'caesar', 'himself', 'speaks', 'king', 'friend']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 13, 'When Pilate therefore heard these words, he brought Jesus out, and sat down on the judgment seat at a place called “The Pavement”, but in Hebrew, “Gabbatha.”', 'John 19:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['“the', 'therefore', 'seat', 'hebrew', '“gabbatha', 'jesus', 'these', 'place', 'brought', 'words']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 14, 'Now it was the Preparation Day of the Passover, at about the sixth hour. He said to the Jews, “Behold, your King!”', 'John 19:14', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['passover', 'preparation', 'jews', 'hour', 'king', 'sixth', 'said', 'your', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 15, 'They cried out, “Away with him! Away with him! Crucify him!”
Pilate said to them, “Shall I crucify your King?”
The chief priests answered, “We have no king but Caesar!”', 'John 19:15', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['they', 'chief', 'crucify', 'priests', 'caesar', 'king', 'away', 'said', 'have', 'your']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 16, 'So then he delivered him to them to be crucified. So they took Jesus and led him away.', 'John 19:16', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'jesus', 'delivered', 'took', 'away', 'crucified', 'then', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 17, 'He went out, bearing his cross, to the place called “The Place of a Skull”, which is called in Hebrew, “Golgotha”,', 'John 19:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['skull”', 'hebrew', 'went', 'which', '“golgotha”', 'place', 'bearing', '“the', 'cross', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 18, 'where they crucified him, and with him two others, on either side one, and Jesus in the middle.', 'John 19:18', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'jesus', 'either', 'side', 'others', 'crucified', 'where', 'middle']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 19, 'Pilate wrote a title also, and put it on the cross. There was written, “JESUS OF NAZARETH, THE KING OF THE JEWS.”', 'John 19:19', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['written', 'title', 'jews', '“jesus', 'king', 'there', 'also', 'wrote', 'nazareth', 'pilate']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 20, 'Therefore many of the Jews read this title, for the place where Jesus was crucified was near the city; and it was written in Hebrew, in Latin, and in Greek.', 'John 19:20', 'WEB', ARRAY['General']::TEXT[], ARRAY['city;', 'therefore', 'title', 'jews', 'written', 'hebrew', 'jesus', 'greek', 'latin', 'place']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 21, 'The chief priests of the Jews therefore said to Pilate, “Don’t write, ‘The King of the Jews,’ but, ‘he said, “I am King of the Jews.”’”', 'John 19:21', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['therefore', 'jews', '‘the', '“don’t', 'priests', 'king', 'said', 'write', 'pilate', 'chief']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 22, 'Pilate answered, “What I have written, I have written.”', 'John 19:22', 'WEB', ARRAY['General']::TEXT[], ARRAY['written', '“what', 'have', 'pilate', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 23, 'Then the soldiers, when they had crucified Jesus, took his garments and made four parts, to every soldier a part; and also the coat. Now the coat was without seam, woven from the top throughout.', 'John 19:23', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'without', 'garments', 'coat', 'also', 'crucified', 'then', 'made', 'soldier', 'parts']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 24, 'Then they said to one another, “Let’s not tear it, but cast lots for it to decide whose it will be,” that the Scripture might be fulfilled, which says,
“They parted my garments among them.
For my cloak they cast lots.”
Therefore the soldiers did these things.', 'John 19:24', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['might', 'they', 'another', 'tear', 'garments', 'whose', 'then', 'them', 'things', 'which']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 25, 'But there were standing by the cross of Jesus his mother, and his mother’s sister, Mary the wife of Clopas, and Mary Magdalene.', 'John 19:25', 'WEB', ARRAY['General']::TEXT[], ARRAY['magdalene', 'standing', 'sister', 'mother', 'jesus', 'mary', 'wife', 'clopas', 'there', 'mother’s']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 26, 'Therefore when Jesus saw his mother, and the disciple whom he loved standing there, he said to his mother,
“Woman, behold, your son!”', 'John 19:26', 'WEB', ARRAY['Love', 'Discipleship']::TEXT[], ARRAY['therefore', 'standing', 'mother', 'jesus', 'disciple', 'there', 'said', '“woman', 'your', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 27, 'Then he said to the disciple,
“Behold, your mother!” From that hour, the disciple took her to his own home.', 'John 19:27', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['mother', 'took', 'disciple', 'hour', 'said', 'your', 'that', 'then', 'home', '“behold']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 28, 'After this, Jesus, seeing that all things were now finished, that the Scripture might be fulfilled, said,
“I am thirsty.”', 'John 19:28', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['things', 'might', 'after', 'jesus', 'fulfilled', 'thirsty', 'this', 'seeing', 'finished', 'said']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 29, 'Now a vessel full of vinegar was set there; so they put a sponge full of the vinegar on hyssop, and held it at his mouth.', 'John 19:29', 'WEB', ARRAY['General']::TEXT[], ARRAY['hyssop', 'they', 'mouth', 'vessel', 'full', 'held', 'there;', 'vinegar', 'sponge']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 30, 'When Jesus therefore had received the vinegar, he said,
“It is finished.” He bowed his head, and gave up his spirit.', 'John 19:30', 'WEB', ARRAY['Holy Spirit']::TEXT[], ARRAY['spirit', 'gave', 'therefore', 'jesus', 'bowed', 'received', 'said', 'finished', 'vinegar', 'when']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 31, 'Therefore the Jews, because it was the Preparation Day, so that the bodies wouldn’t remain on the cross on the Sabbath (for that Sabbath was a special one), asked of Pilate that their legs might be broken, and that they might be taken away.', 'John 19:31', 'WEB', ARRAY['Prayer']::TEXT[], ARRAY['preparation', 'might', 'they', 'taken', 'jews', 'away', 'bodies', 'sabbath', 'remain', 'broken']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 32, 'Therefore the soldiers came, and broke the legs of the first, and of the other who was crucified with him;', 'John 19:32', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'therefore', 'legs', 'him;', 'broke', 'other', 'soldiers', 'crucified', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 33, 'but when they came to Jesus, and saw that he was already dead, they didn’t break his legs.', 'John 19:33', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'legs', 'jesus', 'already', 'break', 'didn’t', 'dead', 'when', 'that', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 34, 'However one of the soldiers pierced his side with a spear, and immediately blood and water came out.', 'John 19:34', 'WEB', ARRAY['General']::TEXT[], ARRAY['pierced', 'side', 'immediately', 'however', 'soldiers', 'blood', 'water', 'came', 'spear']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 35, 'He who has seen has testified, and his testimony is true. He knows that he tells the truth, that you may believe.', 'John 19:35', 'WEB', ARRAY['Faith', 'Truth', 'Witness']::TEXT[], ARRAY['testimony', 'seen', 'testified', 'knows', 'true', 'that', 'believe', 'tells', 'truth']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 36, 'For these things happened, that the Scripture might be fulfilled, “A bone of him will not be broken.”', 'John 19:36', 'WEB', ARRAY['Prophecy']::TEXT[], ARRAY['things', 'might', 'broken', 'these', 'fulfilled', 'will', 'bone', 'that', 'happened', 'scripture']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 37, 'Again another Scripture says, “They will look on him whom they pierced.”', 'John 19:37', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'another', 'pierced', 'will', 'look', '“they', 'says', 'again', 'scripture', 'whom']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 38, 'After these things, Joseph of Arimathaea, being a disciple of Jesus, but secretly for fear of the Jews, asked of Pilate that he might take away Jesus’ body. Pilate gave him permission. He came therefore and took away his body.', 'John 19:38', 'WEB', ARRAY['Prayer', 'Discipleship']::TEXT[], ARRAY['might', 'gave', 'joseph', 'jews', 'body', 'away', 'things', 'secretly', 'take', 'took']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 39, 'Nicodemus, who at first came to Jesus by night, also came bringing a mixture of myrrh and aloes, about a hundred Roman pounds.', 'John 19:39', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'mixture', 'roman', 'myrrh', 'jesus', 'hundred', 'night', 'bringing', 'aloes', 'also']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 40, 'So they took Jesus’ body, and bound it in linen cloths with the spices, as the custom of the Jews is to bury.', 'John 19:40', 'WEB', ARRAY['General']::TEXT[], ARRAY['they', 'jews', 'jesus’', 'took', 'bound', 'linen', 'cloths', 'spices', 'bury', 'body']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 41, 'Now in the place where he was crucified there was a garden. In the garden was a new tomb in which no man had ever yet been laid.', 'John 19:41', 'WEB', ARRAY['General']::TEXT[], ARRAY['been', 'which', 'garden', 'place', 'there', 'crucified', 'ever', 'tomb', 'where', 'laid']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_19}', 42, 'Then because of the Jews’ Preparation Day (for the tomb was near at hand) they laid Jesus there.', 'John 19:42', 'WEB', ARRAY['General']::TEXT[], ARRAY['preparation', '(for', 'they', 'because', 'jesus', 'hand)', 'jews’', 'there', 'near', 'then']::TEXT[], NOW());

-- John Chapter 20 (31 verses)
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 1, 'Now on the first day of the week, Mary Magdalene went early, while it was still dark, to the tomb, and saw the stone taken away from the tomb.', 'John 20:1', 'WEB', ARRAY['General']::TEXT[], ARRAY['first', 'magdalene', 'week', 'taken', 'went', 'early', 'still', 'stone', 'mary', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 2, 'Therefore she ran and came to Simon Peter, and to the other disciple whom Jesus loved, and said to them, “They have taken away the Lord out of the tomb, and we don’t know where they have laid him!”', 'John 20:2', 'WEB', ARRAY['Love', 'Discipleship']::TEXT[], ARRAY['taken', 'they', 'lord', 'away', 'loved', 'tomb', 'them', 'whom', 'know', 'peter']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 3, 'Therefore Peter and the other disciple went out, and they went toward the tomb.', 'John 20:3', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'therefore', 'went', 'disciple', 'peter', 'toward', 'other', 'tomb']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 4, 'They both ran together. The other disciple outran Peter, and came to the tomb first.', 'John 20:4', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['together', 'first', 'they', 'disciple', 'peter', 'both', 'other', 'outran', 'tomb', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 5, 'Stooping and looking in, he saw the linen cloths lying, yet he didn’t enter in.', 'John 20:5', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['stooping', 'linen', 'cloths', 'didn’t', 'looking', 'enter', 'lying']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 6, 'Then Simon Peter came, following him, and entered into the tomb. He saw the linen cloths lying,', 'John 20:6', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['entered', 'following', 'linen', 'peter', 'cloths', 'lying', 'simon', 'then', 'tomb', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 7, 'and the cloth that had been on his head, not lying with the linen cloths, but rolled up in a place by itself.', 'John 20:7', 'WEB', ARRAY['General']::TEXT[], ARRAY['cloth', 'been', 'linen', 'itself', 'cloths', 'place', 'rolled', 'lying', 'that', 'head']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 8, 'So then the other disciple who came first to the tomb also entered in, and he saw and believed.', 'John 20:8', 'WEB', ARRAY['Faith', 'Discipleship']::TEXT[], ARRAY['first', 'entered', 'disciple', 'other', 'believed', 'also', 'then', 'tomb', 'came']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 9, 'For as yet they didn’t know the Scripture, that he must rise from the dead.', 'John 20:9', 'WEB', ARRAY['General']::TEXT[], ARRAY['rise', 'they', 'know', 'didn’t', 'dead', 'that', 'must', 'scripture']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 10, 'So the disciples went away again to their own homes.', 'John 20:10', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['their', 'homes', 'went', 'disciples', 'away', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 11, 'But Mary was standing outside at the tomb weeping. So, as she wept, she stooped and looked into the tomb,', 'John 20:11', 'WEB', ARRAY['General']::TEXT[], ARRAY['looked', 'standing', 'mary', 'wept', 'stooped', 'tomb', 'weeping', 'outside']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 12, 'and she saw two angels in white sitting, one at the head, and one at the feet, where the body of Jesus had lain.', 'John 20:12', 'WEB', ARRAY['General']::TEXT[], ARRAY['lain', 'white', 'feet', 'jesus', 'sitting', 'body', 'where', 'head', 'angels']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 13, 'They told her, “Woman, why are you weeping?”
She said to them, “Because they have taken away my Lord, and I don’t know where they have laid him.”', 'John 20:13', 'WEB', ARRAY['General']::TEXT[], ARRAY['taken', 'they', 'lord', 'know', '“because', 'don’t', '“woman', 'said', 'have', 'told']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 14, 'When she had said this, she turned around and saw Jesus standing, and didn’t know that it was Jesus.', 'John 20:14', 'WEB', ARRAY['General']::TEXT[], ARRAY['standing', 'jesus', 'around', 'know', 'turned', 'this', 'said', 'didn’t', 'when', 'that']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 15, 'Jesus said to her,
“Woman, why are you weeping? Who are you looking for?”
She, supposing him to be the gardener, said to him, “Sir, if you have carried him away, tell me where you have laid him, and I will take him away.”', 'John 20:15', 'WEB', ARRAY['Kingdom']::TEXT[], ARRAY['carried', 'tell', 'jesus', 'will', 'take', 'gardener', '“woman', 'said', 'have', 'away']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 16, 'Jesus said to her,
“Mary.”
She turned and said to him, “Rabboni!” which is to say, “Teacher!”', 'John 20:16', 'WEB', ARRAY['Teaching']::TEXT[], ARRAY['which', 'jesus', 'turned', 'said', '“mary', '“teacher', '“rabboni']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 17, 'Jesus said to her,
“Don’t hold me, for I haven’t yet ascended to my Father; but go to my brothers, and tell them, ‘I am ascending to my Father and your Father, to my God and your God.’”', 'John 20:17', 'WEB', ARRAY['General']::TEXT[], ARRAY['ascended', 'father;', 'ascending', 'tell', 'jesus', 'haven’t', '“don’t', 'hold', 'said', 'father']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 18, 'Mary Magdalene came and told the disciples that she had seen the Lord, and that he had said these things to her.', 'John 20:18', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['magdalene', 'things', 'seen', 'these', 'lord', 'mary', 'said', 'told', 'that', 'disciples']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 19, 'When therefore it was evening, on that day, the first day of the week, and when the doors were locked where the disciples were assembled, for fear of the Jews, Jesus came and stood in the middle, and said to them,
“Peace be to you.”', 'John 20:19', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['jews', 'them', 'were', 'week', '“peace', 'where', 'middle', 'first', 'assembled', 'therefore']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 20, 'When he had said this, he showed them his hands and his side. The disciples therefore were glad when they saw the Lord.', 'John 20:20', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['they', 'therefore', 'side', 'lord', 'this', 'said', 'glad', 'showed', 'when', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 21, 'Jesus therefore said to them again,
“Peace be to you. As the Father has sent me, even so I send you.”', 'John 20:21', 'WEB', ARRAY['General']::TEXT[], ARRAY['therefore', '“peace', 'send', 'jesus', 'even', 'said', 'father', 'sent', 'them', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 22, 'When he had said this, he breathed on them, and said to them,
“Receive the Holy Spirit!', 'John 20:22', 'WEB', ARRAY['Holy Spirit', 'Righteousness']::TEXT[], ARRAY['spirit', '“receive', 'holy', 'this', 'said', 'when', 'breathed', 'them']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 23, 'If you forgive anyone’s sins, they have been forgiven them. If you retain anyone’s sins, they have been retained.”', 'John 20:23', 'WEB', ARRAY['Forgiveness']::TEXT[], ARRAY['anyone’s', 'they', 'been', 'them', 'retain', 'retained', 'sins', 'have', 'forgive', 'forgiven']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 24, 'But Thomas, one of the twelve, called Didymus, wasn’t with them when Jesus came.', 'John 20:24', 'WEB', ARRAY['General']::TEXT[], ARRAY['jesus', 'wasn’t', 'didymus', 'thomas', 'when', 'twelve', 'them', 'came', 'called']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 25, 'The other disciples therefore said to him, “We have seen the Lord!”
But he said to them, “Unless I see in his hands the print of the nails, put my finger into the print of the nails, and put my hand into his side, I will not believe.”', 'John 20:25', 'WEB', ARRAY['Faith', 'Discipleship']::TEXT[], ARRAY['“unless', 'therefore', 'seen', 'finger', 'will', 'lord', 'side', 'print', 'nails', 'other']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 26, 'After eight days again his disciples were inside, and Thomas was with them. Jesus came, the doors being locked, and stood in the middle, and said,
“Peace be to you.”', 'John 20:26', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['locked', 'middle', '“peace', 'after', 'jesus', 'days', 'stood', 'inside', 'being', 'again']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 27, 'Then he said to Thomas,
“Reach here your finger, and see my hands. Reach here your hand, and put it into my side. Don’t be unbelieving, but believing.”', 'John 20:27', 'WEB', ARRAY['General']::TEXT[], ARRAY['reach', 'finger', 'believing', 'side', 'said', 'hand', 'thomas', 'your', '“reach', 'then']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 28, 'Thomas answered him, “My Lord and my God!”', 'John 20:28', 'WEB', ARRAY['General']::TEXT[], ARRAY['thomas', 'lord', 'answered']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 29, 'Jesus said to him,
“Because you have seen me,
you have believed. Blessed are those who have not seen, and have believed.”', 'John 20:29', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['seen', 'jesus', '“because', 'those', 'blessed', 'said', 'have', 'believed']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 30, 'Therefore Jesus did many other signs in the presence of his disciples, which are not written in this book;', 'John 20:30', 'WEB', ARRAY['Discipleship']::TEXT[], ARRAY['presence', 'written', 'therefore', 'which', 'jesus', 'many', 'other', 'this', 'signs', 'book;']::TEXT[], NOW());
INSERT INTO gospel_verses (gospel_id, chapter_id, verse_number, text, reference, translation_code, themes, keywords, created_at)
VALUES (4, '{CHAPTER_UUID_John_20}', 31, 'but these are written, that you may believe that Jesus is the Christ, the Son of God, and that believing you may have life in his name.', 'John 20:31', 'WEB', ARRAY['Faith']::TEXT[], ARRAY['written', 'name', 'believing', 'jesus', 'these', 'life', 'have', 'that', 'believe', 'christ']::TEXT[], NOW());

COMMIT;

-- Total verses inserted: 2218
