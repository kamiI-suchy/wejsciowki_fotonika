<!-- Paste everything below into your GitHub markdown file -->

<div style="margin:0 auto; max-width:900px; border:2px solid #333; font-family:'Segoe UI',Calibri,Arial,sans-serif;">

<!-- University header -->
<div style="text-align:center; font-weight:bold; font-size:1.2em; padding:12px 8px; background:#fff; border-bottom:2px solid #333;">
Zachodniopomorski Uniwersystet Technologiczny
</div>

<!-- Przedmiot / Prowadzący rows -->
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse:collapse; border:1.5px solid #333;">
  <tr>
    <td style="font-weight:bold; background:#f0f0f0; width:18%; white-space:nowrap;">Przedmiot:</td>
    <td style="background:#fff; width:82%;">Fotonika</td>
  </tr>
  <tr>
    <td style="font-weight:bold; background:#f0f0f0; white-space:nowrap;">Prowadzący:</td>
    <td style="background:#fff;">Mgr. Inż. Eliza Miśkiewicz</td>
  </tr>
</table>

<!-- Title banner -->
<div style="text-align:center; font-weight:bold; font-size:1.05em; padding:10px 8px; background:#eef1f8; border-left:1.5px solid #333; border-right:1.5px solid #333; border-bottom:1.5px solid #333;">
SPRAWOZDANIE Z WYKONANEGO ĆWICZENIA
</div>

<!-- Main data table -->
<table border="1" cellpadding="6" cellspacing="0" style="width:100%; border-collapse:collapse; border:1.5px solid #333; font-size:0.95em;">
  <!-- Row 1: Nr ćw., 01, Temat, WOS -->
  <tr>
    <td colspan="2" style="font-weight:bold; background:#f0f0f0; text-align:center; white-space:nowrap;">Nr ćw.:&nbsp;3</td>
    <td style="text-align:center; white-space:nowrap; background:#fff;">01</td>
    <td colspan="2" style="font-weight:bold; background:#f0f0f0; text-align:left; white-space:nowrap;">Temat:</td>
    <td colspan="7" style="text-align:left; background:#fff; white-space:normal; word-wrap:break-word;">Wyznaczanie Ogniskowej Soczewki (WOS)</td>
  </tr>

  <!-- Row 2: Zespół, Grupa, Studia, Kierunek, Rok, Data -->
  <tr>
    <td style="font-weight:bold; background:#f0f0f0; white-space:nowrap;">Zespół lab.:</td>
    <td style="text-align:center; background:#fff;">5</td>
    <td style="font-weight:bold; background:#f0f0f0; white-space:nowrap;">Grupa:</td>
    <td style="text-align:center; background:#fff;">L1</td>
    <td style="font-weight:bold; background:#f0f0f0; white-space:nowrap;">Studia:</td>
    <td style="text-align:center; background:#fff;">S2</td>
    <td style="font-weight:bold; background:#f0f0f0; white-space:nowrap;">Kierunek:</td>
    <td style="text-align:center; background:#fff;">TI</td>
    <td style="font-weight:bold; background:#f0f0f0; white-space:nowrap;">Rok:</td>
    <td style="text-align:center; background:#fff; white-space:nowrap;">2025/2026</td>
    <td style="font-weight:bold; background:#f0f0f0; white-space:nowrap;">Data:</td>
    <td style="text-align:center; background:#fff; white-space:nowrap;">23.03.2026</td>
  </tr>

  <!-- Row 3: Skład zespołu -->
  <tr>
    <td colspan="3" style="font-weight:bold; background:#f0f0f0; text-align:left; white-space:nowrap;">Skład zespołu wg. obecności podczas ćwiczenia:</td>
    <td colspan="9" style="text-align:left; background:#fff; white-space:normal; word-wrap:break-word; line-height:1.4;">
      1. Piotr Gadomski &nbsp;&nbsp; 2. Kamil Suchy
    </td>
  </tr>
</table>

<!-- Grade row -->
<table border="1" cellpadding="8" cellspacing="0" style="width:100%; border-collapse:collapse; border:1.5px solid #333; margin-top:-1px;">
  <tr>
    <td style="font-weight:bold; background:#f0f0f0; width:18%; white-space:nowrap;">Ocena:</td>
    <td style="background:#ffffff; min-height:40px; height:48px; width:82%;"></td>
  </tr>
</table>

</div>        .info-table {
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
