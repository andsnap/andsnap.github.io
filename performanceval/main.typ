#let data = json("data.json")

#let f(val) = {
  if val != "" and val != none {
    underline(stroke: (dash: "dotted"))[#val]
  }
}

#set underline(
  stroke: 1pt + black,
)

#set par(leading: 10pt, spacing: 10pt)
#set text(font: ("Times New Roman", "Noto Serif Devanagari"))
#show math.equation: set text(font: ("Times New Roman", "Noto Serif Devanagari"))
#set page(paper: "a4", margin: (x: 0.5in, y: 0.5in))
#set underline(
  stroke: 1pt + black,
)

#if data.at("teacher_level", default: "") != "" and data.at("teacher_level", default: "") != "none" {
  place(
    top + right,
    dx: 0.5cm,
    dy: 0.25cm,
  )[
    #rotate(-25deg)[
      #box(
        stroke: 0.5pt + rgb("000"),
        radius: 4pt,
        inset: (x: 5pt, y: 5pt),
      )[
        #set text(size: 8pt, weight: "bold")
        #(data.teacher_level)
      ]
    ]
  ]
}

#align(center)[== अनुसूची १]
#align(center)[== (नियम ३२ सँग सम्बन्धित)]
#align(center)[== #underline[शिक्षकको कार्य सम्पादन मूल्याङ्कन फाराम]]

#linebreak()

कार्य सम्पादन मूल्याङ्कन फाराम पेश गरेको विद्यालय : #f(data.vidyalaya)

#grid(
  columns: (1fr, 1fr),
  [दर्ता नं : #f(data.darta_no)],
  [दर्ता मिति : #f(data.darta_miti)],
)

शिक्षक / प्रधानाध्यापकको नाम, थर : #f(data.shikshak_naam)

#grid(
  columns: (1fr, 1fr, 1fr),
  [सङ्केत नं. : #f(data.sanket_no)],
  [तह : #f(data.tah)],
  [श्रेणी : #f(data.shreni)],
)

हाल कार्यरत विद्यालयको नाम ठेगाना : #f(data.hal_vidyalaya)

मूल्याङ्कन अवधि : #h(16pt) #f(data.mulyankan_dekhi) #h(16pt) देखि #h(16pt) #f(data.mulyankan_samma) #h(16pt) सम्म

#align(center)[== खण्ड क]
#grid(
  columns: (1fr, 1fr),
  [=== १. अध्यापन गरेको विषयमा विद्यार्थीले प्राप्त गरेको उपलब्धि],
  align(right)[=== अङ्क : ३],
)

#grid(
  columns: (1fr, 1fr, 1fr),
  [(क) अध्यापन गरेको तह : #f(data.adhyapan_tah)],
  [(ख) अध्यापन गरेको कक्षा : #f(data.adhyapan_kaksha)],
  [(ग) अध्यापन गरेको विषय : #f(data.adhyapan_bishay)],
)

(घ) आधार लिइएको परीक्षा :

#let cb(val) = box(stroke: if val == true or val == "true" { 1.2pt } else { 0.5pt }, width: 10pt, height: 10pt, baseline: 2pt, inset: 0pt)[#align(center + horizon)[#set text(size: 8pt, weight: if val == true or val == "true" { "bold" } else { "regular" });#if val == true or val == "true" { "✓" }]]

#grid(
  columns: (1fr, 1fr),
  [
   #h(8pt) #cb(data.at("exam_1", default: false)) (१) कक्षा ३ को उपलब्धि परीक्षा \
   #h(8pt) #cb(data.at("exam_2", default: false)) (२) कक्षा ५ को उपलब्धि परीक्षा \
   #h(8pt) #cb(data.at("exam_3", default: false)) (३) कक्षा ८ को आधारभूत तह उत्तीर्ण परीक्षा \
   #h(8pt) #cb(data.at("exam_4", default: false)) (४) कक्षा १० को माध्यमिक शिक्षा परीक्षा
  ],
  [
    #cb(data.at("exam_5", default: false)) (५) कक्षा ११/१२ को माध्यमिक शिक्षा उत्तीर्ण परीक्षा \
    #cb(data.at("exam_6", default: false)) (६) अपाङ्गता भएका विद्यार्थीको परीक्षा \
    #cb(data.at("exam_7", default: false)) (७) अन्य
  ],
)

#stack(
  dir: ltr,
  spacing: 3pt,
  [(ङ) सम्बन्धित विषयको परीक्षामा विद्यार्थीहरूले प्राप्त गरेको औसत अङ्क : ],
  pad(top: -4pt)[
    #box(
      stroke: 0.5pt + rgb("000"),
      inset: (x: 10pt, y: 5pt),
    )[#(data.aushat_anka)]
  ],
)

#show math.equation.where(block: true): set align(left)
$
#[(च) ]
#[अध्यापन गरेको विषयको कक्षागत औसत उत्तीर्ण प्रतिशत] / #[सम्बन्धित विषयको भौगोलिक एकाइको औसत उत्तीर्ण प्रतिशत]
* ३ = #[*शिक्षकले प्राप्त गरेको अङ्क :*]

#pad(top: 2pt)[
    #box(
        stroke: 0.5pt + rgb("000"),
        inset: (x: 10pt, y: 5pt),
    )[#(data.shikshak_prapta_anka_ka)]
]
$

आफूले अध्यापन गरेको विद्यार्थीले प्राप्त गरेको परीक्षाफल अनुसार गणना भएको छ भनी दस्तखत गर्ने सम्बन्धित शिक्षकको
#grid(
  columns: (2fr, 1fr, 1fr),
  [],
  [],
  [दस्तखत :],
)
#grid(
  columns: (2fr, 1fr, 1fr),
  [],
  [],
  [मिति : #f(data.ka_dastakhat_miti)],
)

#linebreak()

#align(center)[== खण्ड ख]
#grid(
  columns: (1fr, 1fr),
  [=== २. शिक्षण कार्यसँग सम्बन्धित अनुसन्धानको विवरण],
  align(right)[=== अङ्क : १],
)

(क) अनुसन्धान गरिएको विषयको संक्षिप्त व्यहोरा : #f(data.anusandhan_bishay)
#linebreak()
(ख) अनुसन्धानबाट प्राप्त निष्कर्षको संक्षिप्त व्यहोरा : #f(data.anusandhan_nishkarsha)
#linebreak()
(ग) संलग्न गरिएको प्रतिवेदनको पृष्ठ सङ्ख्या : #f(data.pratibedan_pristha)
#linebreak()
#stack(
  dir: ltr,
  spacing: 3pt,
  [*(घ) शिक्षकले प्राप्त गरेको अङ्क :*],
  pad(top: -4pt)[
    #box(
      stroke: 0.5pt + rgb("000"),
      inset: (x: 10pt, y: 5pt),
    )[#(data.shikshak_prapta_anka_kha)]
  ],
)

#align(center)[== खण्ड ग]
#v(10pt)
#grid(
  columns: (1fr, 1fr),
  [=== ३. विशेष जिम्मेवारी विवरण],
  align(right)[=== वार्षिक पूर्णाङ्क : १],
)

#let resp-row(label, title, dekhi, samma) = grid(
  columns: (auto, auto, 1fr, auto, 1fr, auto),
  align: (left, left, center, center, center, right),
  [*#label*], [#title], [#f(dekhi)], [देखि], [#f(samma)], [सम्म]
)

#let all_resps = (
  (check: data.at("resp_ka_check", default: false), title: "प्रधानाध्यापक", dekhi: data.at("resp_ka_dekhi", default: ""), samma: data.at("resp_ka_samma", default: "")),
  (check: data.at("resp_kha_check", default: false), title: "सहायक प्रधानाध्यापक", dekhi: data.at("resp_kha_dekhi", default: ""), samma: data.at("resp_kha_samma", default: "")),
  (check: data.at("resp_ga_check", default: false), title: "विशेष शिक्षा शिक्षक", dekhi: data.at("resp_ga_dekhi", default: ""), samma: data.at("resp_ga_samma", default: "")),
  (check: data.at("resp_gha_check", default: false), title: "वर्ग शिक्षक", dekhi: data.at("resp_gha_dekhi", default: ""), samma: data.at("resp_gha_samma", default: "")),
  (check: data.at("resp_nga_check", default: false), title: "बहुवर्ग शिक्षक", dekhi: data.at("resp_nga_dekhi", default: ""), samma: data.at("resp_nga_samma", default: "")),
  (check: data.at("resp_cha_check", default: false), title: "विद्यार्थी परामर्श तथा सल्लाह सेवा संयोजक", dekhi: data.at("resp_cha_dekhi", default: ""), samma: data.at("resp_cha_samma", default: "")),
  (check: data.at("resp_chha_check", default: false), title: "संगीत, गायन र नृत्य संयोजक", dekhi: data.at("resp_chha_dekhi", default: ""), samma: data.at("resp_chha_samma", default: "")),
  (check: data.at("resp_ja_check", default: false), title: "खेलकुद संयोजक", dekhi: data.at("resp_ja_dekhi", default: ""), samma: data.at("resp_ja_samma", default: "")),
  (check: data.at("resp_jha_check", default: false), title: "अतिरिक्त क्रियाकलाप संयोजक", dekhi: data.at("resp_jha_dekhi", default: ""), samma: data.at("resp_jha_samma", default: "")),
  (check: data.at("resp_nya_check", default: false), title: "परीक्षा र विद्यार्थी मूल्याङ्कन संयोजक", dekhi: data.at("resp_nya_dekhi", default: ""), samma: data.at("resp_nya_samma", default: "")),
  (check: data.at("resp_ta_check", default: false), title: "विद्यालय समुदाय सम्बन्ध संयोजक", dekhi: data.at("resp_ta_dekhi", default: ""), samma: data.at("resp_ta_samma", default: "")),
  (check: data.at("resp_tha_check", default: false), title: "योग संयोजक", dekhi: data.at("resp_tha_dekhi", default: ""), samma: data.at("resp_tha_samma", default: "")),
)

#let active_resps = all_resps.filter(x => x.check == true or x.check == "true")
#let labels = ("(क) ", "(ख) ", "(ग) ", "(घ) ", "(ङ) ", "(च) ", "(छ) ", "(ज) ", "(झ) ", "(ञ) ", "(ट) ", "(ठ) ")

#if active_resps.len() > 6 {
  grid(
    columns: (1fr, 1fr),
    column-gutter: 8pt,
    row-gutter: 8pt,
    ..active_resps.enumerate().map(pair => resp-row(labels.at(pair.at(0)), pair.at(1).title, pair.at(1).dekhi, pair.at(1).samma))
  )
} else if active_resps.len() > 0 {
  grid(
    columns: (1fr),
    column-gutter: 8pt,
    row-gutter: 8pt,
    ..active_resps.enumerate().map(pair => resp-row(labels.at(pair.at(0)), pair.at(1).title, pair.at(1).dekhi, pair.at(1).samma))
  )
} else {
  [कुनै विशेष जिम्मेवारी छैन]
}

#v(5pt)

#stack(
  dir: ltr,
  spacing: 3pt,
  [*शिक्षकले प्राप्त गरेको अङ्क :*],
  pad(top: -4pt)[
    #box(
      stroke: 0.5pt + rgb("000"),
      inset: (x: 10pt, y: 5pt),
    )[#(data.shikshak_prapta_anka_ga)]
  ],
)

#pagebreak()

माथि खण्ड (क), (ख) र (ग) मा उल्लिखित विवरणका सम्बन्धमा सिफारिस गर्ने तथा प्रमाणित गर्नेको सहिछाप:

#grid(
  columns: (1fr, 1fr),
  column-gutter: 40pt,
  [
    #underline[=== सिफारिस गर्ने]
    दस्तखत : \
    नाम थर : #f(data.sifaris_naam) \
    पद : #f(data.sifaris_pad) \
    सङ्केत नं. : #f(data.sifaris_sanket) \
    मिति : #f(data.sifaris_miti)
  ],
  [
    #underline[=== प्रमाणित गर्ने]
    दस्तखत : \
    नाम थर : #f(data.pramanit_naam) \
    पद : #f(data.pramanit_pad) \
    सङ्केत नं. : #f(data.pramanit_sanket) \
    मिति : #f(data.pramanit_miti)
  ]
)

#align(center)[== खण्ड घ]
=== ४. कार्य सम्पादनको आधारमा सुपरिवेक्षक र पुनरावलोकन समितिको मूल्याङ्कन

#set par(leading: 6pt)

#table(
  columns: (25pt, 1fr, 50pt, 38pt, 38pt, 38pt, 50pt, 38pt, 38pt, 38pt),
  align: (col, row) => if col < 2 and row > 1 { left + horizon } else { center + horizon },
  stroke: 0.5pt,

  table.header(
    table.cell(rowspan: 2)[*क्र.सं.*],
    table.cell(rowspan: 2)[*मूल्याङ्कनका आधारहरू*],
    table.cell(colspan: 4)[*सुपरिवेक्षक (छ अङ्क)*],
    table.cell(colspan: 4)[*पुनरावलोकन समिति (चार अङ्क)*],

    [*अति उत्तम\ (०.७५)*], [*उत्तम\ (०.६०)*], [*सामान्य\ (०.४५)*], [*न्यून\ (०.३०)*],
    [*अति उत्तम\ (०.५०)*], [*उत्तम\ (०.४०)*], [*सामान्य\ (०.३०)*], [*न्यून\ (०.२०)*],
  ),

  [१.], [विषयवस्तुको ज्ञान], [], [], [], [], [], [], [], [],
  [२.], [शिक्षण पेशाप्रतिको निष्ठा, लगनशीलता र आचारसंहिताको पालना], [], [], [], [], [], [], [], [],
  [३.], [विद्यालयको शैक्षिक गुणस्तरप्रति देखाउने तदरुक्ता, उत्तरदायित्व बहन र जिम्मेवारी बोध], [], [], [], [], [], [], [], [],
  [४.], [अध्यापन विधि र सिपको प्रयोग], [], [], [], [], [], [], [], [],
  [५.], [विद्यालय समय, कक्षाकोठा समयको पालना, सदुपयोग तथा कक्षा व्यवस्थापन र सञ्चालन], [], [], [], [], [], [], [], [],
  [6.], [अतिरिक्त क्रियाकलापप्रति सक्रियता एवं संलग्नता], [], [], [], [], [], [], [], [],
  [७.], [शैक्षिक सामग्री सङ्कलन, निर्माण र प्रयोग], [], [], [], [], [], [], [], [],
  [८.], [विद्यार्थीको प्रगतिको अध्यावधिक अभिलेख राख्ने र अभिभावकहरूलाई जानकारी गराउने], [], [], [], [], [], [], [], [],

  table.cell(colspan: 2)[प्रत्येक महलको जम्मा], [], [], [], [], [], [], [], [],

  table.cell(colspan: 6, align: left)[
    #pad(left: 4pt)[
      *जम्मा अङ्क :*\ *अक्षरमा :*

      #linebreak()
    ]
  ],
  table.cell(colspan: 4, align: left)[
    #pad(left: 4pt)[
      *जम्मा अङ्क :* \
      *अक्षरमा :*

      #linebreak()
    ]
  ],

  table.cell(colspan: 10, align: left)[
    #pad(left: 4pt, top: 4pt, bottom: 4pt)[
      *सुपरिवेक्षक र पुनरावलोकन समितिले दिएको कुल अङ्क :*

      *अक्षरमा :*
    ]
  ],

  table.cell(colspan: 3, rowspan: 4, align: left)[
    #pad(left: 4pt, top: 4pt, bottom: 4pt)[
      #align(center)[*सुपरिवेक्षकको*]

      #v(6pt)
      *१) नाम :* #f(data.supervisor_naam)

      #v(4pt)
      *२) पद :* #f(data.supervisor_pad)

      #v(4pt)
      *३) सङ्केत नं. :* #f(data.supervisor_sanket)

      #v(4pt)
      *४) दस्तखत :*

      #v(4pt)
      *५) मिति :* #f(data.supervisor_miti)
    ]
  ],

  table.cell(colspan: 7, align: center)[
    #set text(weight: "bold")
    पुनरावलोकन समिति
  ],

  table.cell(colspan: 7, align: left)[
    #pad(left: 4pt, top: 2pt, bottom: 2pt)[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 4pt,
        [*१.* #h(5pt)], [
          #set text(weight: "bold")
          नाम : \
          पद : \
          दस्तखत : \
          #grid(
            columns: (1fr, 1fr),
            [सङ्केत नं. :], [मिति :]
          )
        ]
      )
    ]
  ],

  table.cell(colspan: 7, align: left)[
    #pad(left: 4pt, top: 2pt, bottom: 2pt)[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 4pt,
        [*२.* #h(5pt)], [
          #set text(weight: "bold")
          नाम : \
          पद : \
          दस्तखत : \
          #grid(
            columns: (1fr, 1fr),
            [सङ्केत नं. :], [मिति :]
          )
        ]
      )
    ]
  ],

  table.cell(colspan: 7, align: left)[
    #pad(left: 4pt, top: 2pt, bottom: 2pt)[
      #grid(
        columns: (auto, 1fr),
        column-gutter: 4pt,
        [*३.* #h(5pt)], [
          #set text(weight: "bold")
          नाम : \
          पद : \
          दस्तखत : \
          #grid(
            columns: (1fr, 1fr),
            [सङ्केत नं. :], [मिति :]
          )
        ]
      )
    ]
  ]
)
