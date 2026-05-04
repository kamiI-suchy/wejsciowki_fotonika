<!DOCTYPE html>
<html lang="pl">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sprawozdanie – Wyznaczanie Ogniskowej Soczewki</title>
    <style>
        :root {
            --border-color: #2c2c2c;
            --bg-light: #f4f4f4;
            --text-dark: #1a1a1a;
            --font-stack: 'Segoe UI', 'Calibri', 'Arial', sans-serif;
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            background: #e3e3e3;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: var(--font-stack);
            padding: 24px;
        }

        .report-container {
            max-width: 950px;
            width: 100%;
            background: white;
            border: 2px solid #3a3a3a;
            box-shadow: 6px 8px 20px rgba(0, 0, 0, 0.2);
            border-radius: 2px;
            overflow: hidden;
        }

        /* ── University banner ── */
        .uni-banner {
            text-align: center;
            font-weight: 700;
            font-size: 1.2rem;
            letter-spacing: 0.6px;
            padding: 14px 16px;
            background: #fff;
            border-bottom: 2px solid #3a3a3a;
            text-transform: uppercase;
            color: #1f1f1f;
        }

        /* ── Subject / Instructor table (2 columns, separate rows) ── */
        .info-table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
        }

        .info-table td {
            border: 1.5px solid #3a3a3a;
            padding: 10px 14px;
            font-size: 0.96rem;
            vertical-align: middle;
            background: #ffffff;
        }

        .info-table .info-label {
            font-weight: 700;
            background: #f0f0f0;
            width: 18%;
            letter-spacing: 0.3px;
            white-space: nowrap;
        }

        .info-table .info-value {
            width: 82%;
            font-weight: 400;
        }

        /* ── Title banner ── */
        .title-banner {
            text-align: center;
            font-weight: 700;
            font-size: 1.1rem;
            letter-spacing: 0.5px;
            padding: 12px 16px;
            background: #eef1f8;
            border-left: 1.5px solid #3a3a3a;
            border-right: 1.5px solid #3a3a3a;
            border-bottom: 1.5px solid #3a3a3a;
            text-transform: uppercase;
            color: #111;
        }

        /* ── Main data table (12 columns, flexible) ── */
        .main-table {
            width: 100%;
            border-collapse: collapse;
            table-layout: auto;
        }

        .main-table th,
        .main-table td {
            border: 1.5px solid #3a3a3a;
            padding: 9px 8px;
            font-size: 0.93rem;
            vertical-align: middle;
            background: #ffffff;
            text-align: center;
            white-space: nowrap;
        }

        .main-table .lbl {
            font-weight: 700;
            background: #f0f0f0;
            letter-spacing: 0.2px;
            white-space: nowrap;
        }

        .main-table .val {
            font-weight: 400;
            background: #fff;
            white-space: nowrap;
        }

        .main-table .left-align {
            text-align: left;
        }

        /* Merge cells for specific rows */
        .main-table .merged-nrcw {
            font-weight: 700;
            background: #fffdf5;
        }

        .main-table .merged-desc {
            text-align: left;
            font-weight: 400;
            white-space: normal;  /* allow wrapping inside the topic cell */
            word-break: break-word;
        }

        .main-table .team-list {
            text-align: left;
            white-space: normal;
            word-break: break-word;
            line-height: 1.4;
        }

        /* Grade row */
        .grade-table {
            width: 100%;
            border-collapse: collapse;
            table-layout: fixed;
        }

        .grade-table td {
            border: 1.5px solid #3a3a3a;
            padding: 12px 14px;
            font-size: 0.96rem;
            vertical-align: middle;
        }

        .grade-label {
            font-weight: 700;
            background: #f0f0f0;
            width: 18%;
            letter-spacing: 0.3px;
        }

        .grade-value {
            background: #ffffff;
            min-height: 45px;
            height: 50px;
        }

        /* Print styling */
        @media print {
            body {
                background: white;
                padding: 0;
            }
            .report-container {
                box-shadow: none;
                border: 2px solid #000;
                max-width: 100%;
            }
            .main-table th,
            .main-table td,
            .info-table td,
            .grade-table td {
                border-color: #000;
            }
            .info-label,
            .lbl,
            .grade-label {
                background: #eee !important;
                -webkit-print-color-adjust: exact;
                print-color-adjust: exact;
            }
        }

        /* Make it responsive */
        @media (max-width: 750px) {
            .info-table .info-label,
            .grade-label {
                width: 28%;
            }
            .main-table th,
            .main-table td {
                font-size: 0.78rem;
                padding: 6px 4px;
            }
            .uni-banner {
                font-size: 1rem;
                padding: 10px;
            }
        }
    </style>
</head>
<body>
<div class="report-container">

    <!-- ─── University name (new row at the very top) ─── -->
    <div class="uni-banner">Zachodniopomorski Uniwersystet Technologiczny</div>

    <!-- ─── Przedmiot (separate row) + Prowadzący (separate row) ─── -->
    <table class="info-table">
        <tr>
            <td class="info-label">Przedmiot:</td>
            <td class="info-value">Fotonika</td>
        </tr>
        <tr>
            <td class="info-label">Prowadzący:</td>
            <td class="info-value">Mgr. Inż. Eliza Miśkiewicz</td>
        </tr>
    </table>

    <!-- ─── Title ─── -->
    <div class="title-banner">Sprawozdanie z wykonanego ćwiczenia</div>

    <!-- ─── Main exercise data (12‑column grid) ─── -->
    <table class="main-table">
        <!-- Row 1: Nr ćw.:3  |  01  |  Temat:  |  Wyznaczanie Ogniskowej Soczewki (WOS) -->
        <tr>
            <td class="lbl merged-nrcw" colspan="2">Nr ćw.:&nbsp;3</td>
            <td class="val" colspan="1">01</td>
            <td class="lbl" colspan="2">Temat:</td>
            <td class="val merged-desc" colspan="7">Wyznaczanie Ogniskowej Soczewki (WOS)</td>
        </tr>

        <!-- Row 2: Zespół lab., Grupa, Studia, Kierunek, Rok, Data -->
        <tr>
            <td class="lbl">Zespół lab.:</td>
            <td class="val">5</td>
            <td class="lbl">Grupa:</td>
            <td class="val">L1</td>
            <td class="lbl">Studia:</td>
            <td class="val">S2</td>
            <td class="lbl">Kierunek:</td>
            <td class="val">TI</td>
            <td class="lbl">Rok:</td>
            <td class="val">2025/2026</td>
            <td class="lbl">Data:</td>
            <td class="val">23.03.2026</td>
        </tr>

        <!-- Row 3: Skład zespołu -->
        <tr>
            <td class="lbl" colspan="3" style="text-align: left;">Skład zespołu wg. obecności podczas ćwiczenia:</td>
            <td class="val team-list" colspan="9">
                1. Piotr Gadomski &nbsp;&nbsp; 2. Kamil Suchy
            </td>
        </tr>
    </table>

    <!-- ─── Ocena row ─── -->
    <table class="grade-table">
        <tr>
            <td class="grade-label">Ocena:</td>
            <td class="grade-value"></td>
        </tr>
    </table>

</div>
</body>
</html>
