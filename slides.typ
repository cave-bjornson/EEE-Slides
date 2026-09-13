#import "@preview/touying:0.5.5": *
#import themes.simple: *
#import "@preview/merman:0.3.0": mermaid
#import "@preview/cetz:0.5.2"

#show: simple-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Tjänster (Services)],
    subtitle: [DNS • DHCP • Fileshares • SSH],
    author: [Klass: EEDAK25],
    date: [2026-09-15],
  ),
)

#title-slide[
  #v(1em)
  #text(2.2em, weight: "bold")[Tjänster (Services)]

  #v(0.8em)
  #text(1.3em, fill: rgb("#0369a1"))[DNS • DHCP • Fileshares • SSH]

  #v(1.8em)
  #text(1em, fill: gray.darken(20%))[Klass: EEDAK25 #h(2em) Datum: 2026-09-15]
]

== Tjänster

#align(center + horizon)[
  #cetz.canvas(length: 1cm, {
    import cetz.draw: *

    // --- Background subtle floor line ---
    line((-5, -2), (5, -2), stroke: (paint: luma(180), thickness: 2pt, dash: "solid"))

    // ==========================================
    // 1. TUX PENGUIN (The Inspector / Monitor)
    // ==========================================
    group({
      // Feet
      circle((-3.5, -2.1), radius: (0.45, 0.22), fill: rgb("#f59e0b"), stroke: 1.5pt + black)
      circle((-2.6, -2.1), radius: (0.45, 0.22), fill: rgb("#f59e0b"), stroke: 1.5pt + black)

      // Outer body (black)
      circle((-3.0, -0.6), radius: (1.1, 1.45), fill: rgb("#1e293b"), stroke: 2pt + black)

      // Belly (white)
      circle((-2.8, -0.8), radius: (0.7, 1.05), fill: white, stroke: 1.5pt + black)

      // Left flipper
      bezier((-4.0, -0.2), (-4.4, -1.2), (-4.5, -0.6), fill: rgb("#1e293b"), stroke: 2pt + black)

      // Eyes (looking right towards the daemon)
      circle((-2.9, 0.25), radius: 0.22, fill: white, stroke: 1.5pt + black)
      circle((-2.4, 0.25), radius: 0.22, fill: white, stroke: 1.5pt + black)
      // Pupils
      circle((-2.78, 0.25), radius: 0.09, fill: black)
      circle((-2.28, 0.25), radius: 0.09, fill: black)

      // Beak (orange triangle)
      line((-2.6, 0.05), (-2.0, 0.0), (-2.6, -0.15), close: true, fill: rgb("#f59e0b"), stroke: 1.5pt + black)

      // Right arm holding magnifying glass forward
      line((-2.1, -0.5), (-1.2, -0.1), stroke: 5pt + rgb("#1e293b"), cap: "round")

      // Magnifying glass handle
      line((-1.2, -0.1), (-0.5, 0.35), stroke: 4pt + rgb("#78350f"), cap: "round")

      // Magnifying glass rim and lens
      circle((-0.2, 0.55), radius: 0.65, fill: rgb(186, 230, 253, 140), stroke: 3.5pt + rgb("#334155"))
      // Lens shine
      arc((-0.2, 0.55), start: 60deg, stop: 130deg, radius: 0.45, stroke: 2pt + white)
    })

    // Label under Tux
    content((-3.0, -2.6), text(weight: "bold", size: 14pt, fill: rgb("#1e293b"))[])

    // ==========================================
    // 2. OBSERVATION SIGHT / BEAM
    // ==========================================
    line((0.45, 0.55), (1.6, 0.3), stroke: (paint: rgb("#0284c7"), thickness: 1.5pt, dash: "dashed"))

    // ==========================================
    // 3. LINUX DAEMON (The Background Service)
    // ==========================================
    group({
      // Shadow / running base
      circle((3.0, -2.0), radius: (1.2, 0.2), fill: luma(220))

      // Daemon tail with spade
      bezier((3.9, -1.2), (4.7, -0.4), (4.4, -1.6), stroke: 2.5pt + rgb("#dc2626"))
      line((4.7, -0.4), (4.9, -0.15), (4.4, -0.2), close: true, fill: rgb("#dc2626"), stroke: 1.5pt + black)

      // Daemon body (crimson red)
      circle((3.0, -0.6), radius: (1.0, 1.25), fill: rgb("#ef4444"), stroke: 2pt + black)

      // Left and right horns
      line((2.35, 0.3), (2.0, 1.0), (2.65, 0.5), close: true, fill: rgb("#b91c1c"), stroke: 1.5pt + black)
      line((3.65, 0.3), (4.0, 1.0), (3.35, 0.5), close: true, fill: rgb("#b91c1c"), stroke: 1.5pt + black)

      // Daemon eyes (busy, attentive)
      circle((2.65, -0.3), radius: 0.2, fill: white, stroke: 1.5pt + black)
      circle((3.35, -0.3), radius: 0.2, fill: white, stroke: 1.5pt + black)
      circle((2.65, -0.3), radius: 0.08, fill: black)
      circle((3.35, -0.3), radius: 0.08, fill: black)

      // Cute smile
      arc((3.0, -0.8), start: 200deg, stop: 340deg, radius: 0.35, stroke: 2pt + black)

      // Daemon holding background work tools (small gear & wrench)
      circle((2.0, -0.9), radius: 0.3, fill: rgb("#64748b"), stroke: 1.5pt + black)
      content((2.0, -0.9), text(size: 8pt, fill: white)[⚙])
    })

    // Label under Daemon
    content((3.0, -2.6), text(weight: "bold", size: 14pt, fill: rgb("#b91c1c"))[])
  })
]

== Tjänster - Definition

- Tjänster eller Services är applikationer som utför en specifik uppgift i bakgrunden utan input från användaren.
- De kan startas och stoppas direkt av användaren men det normala är att använda någon form av övervakare.
- Denna lektion kommer demonstrera ett urval vanliga bakgrundstjänster i en linuxmiljö. Det man lär sig går att ta med sig till Windows på lektionen imorgon.
