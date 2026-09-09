# Orian — פרוטוטייפ עמוד הבית

שלושה קונספטים לעמוד הבית של אוריין, כל אחד קובץ HTML יחיד וסטטי (CSS ו‑JS בתוכו, הפונטים
מוטמעים כ‑base64). אין build, אין dependencies — פותחים את הקובץ והוא רץ.

**חי כאן:** https://rotemmoveo.github.io/orian-website-prototype/

| | |
|---|---|
| [`index.html`](index.html) | דף הכניסה, מקשר לשלושת הקונספטים |
| [`concept-1-hero.html`](concept-1-hero.html) | קונספט 1 — קו אחד שרץ לאורך העמוד |
| [`concept-2-hero.html`](concept-2-hero.html) | קונספט 2 — פאזל של ריבועי וידאו |
| [`concept-3-hero.html`](concept-3-hero.html) | קונספט 3 — סרט ממוסגר וקונסולה שיושבת עליו |

הנכסים (`hero-video.mp4`, `hero-video-2.mp4`, `truck-drive.mp4`, `clients-video.mp4`, ה‑`IMAGE - …jpg`) יושבים לצד ה‑HTML ונטענים
בנתיב יחסי, אז כל הספרייה צריכה לעבור ביחד.

## הרצה מקומית

הקבצים טוענים וידאו בנתיב יחסי, ולכן `file://` לא תמיד יעבוד. הכי פשוט:

```bash
python3 -m http.server 8000
```

ואז לפתוח http://localhost:8000

## מקור העריכה

הקבצים נערכים ב‑`../כיוונים/` ומסונכרנים לכאן. לעדכון ודחיפה:

```bash
./publish.sh
```
