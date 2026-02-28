#import "@preview/acadennial-cv:0.1.0": *
#import "@preview/scienceicons:0.1.0": *

// ============================================
// Default function configurations
// ============================================

#let col-cfg = (
  c1-len: 15%,
  c2-len: 1fr,
  c3-len: auto,
  col-gutter: 1em,
)

#let employment-head = employment-head.with(..col-cfg)
#let employment-head-item = employment-head-item.with(..col-cfg)
#let employment-head-item-list = employment-head-item-list.with(..col-cfg)
#let meta-entry = meta-entry.with(..col-cfg)
#let meta-entry-item = meta-entry-item.with(..col-cfg)
#let meta-entry-item-list = meta-entry-item-list.with(..col-cfg)
#let pub-item = pub-item.with(..col-cfg)
#let pub-item-list = pub-item-list.with(..col-cfg)

// ============================================
// Initialize resume settings
// ============================================
#show: resume.with(
  col-args: (
    c1-len: col-cfg.c1-len,
    c2-len: col-cfg.c2-len,
    col-gutter: col-cfg.col-gutter,
  ),
  author-info: (
    name: "Spandan Guragain",
    primary-info: [
      Student of Bachleor in Computer Engineering \
      Institute of Engineering \
      Purwanchal Campus \
      Dharan, Nepal
    ],
    secondary-info: [
      alias: sientiac, iac \
      #link("https://www.spandanguragain.com.np")[www.spandanguragain.com.np] \
      #link("mailto:spandan@3o14.com")[mailto: spandan\@3o14.com] \
      #link("https://github.com/scientiac")[#github-icon()]
      #link("https://scientiac.space")[#website-icon()]
      #link("https://linkedin.com/in/scientiac")[#linkedin-icon()]
      #link("https://polymaths.social/@iac")[#mastodon-icon()]
    ],
  ),
)

== Education
#employment-head-item-list(
  (
    c2: "Tribhuwan University",
    c3: "IOE, Purwanchal Campus, Dharan, Nepal",
    body: [
      Bachelor in Computer Engineering, Ongoing \
      _Major Project:_ Implementing Read/Write Overlay Filesystem Support in a Microkernel Based Operating System \
      _Supervisor:_ Er. Manoj Guragai
    ],
  ),
  (
    c2: "Dharan Adarsha College",
    c3: "Dharan, Nepal",
    body: [
      National Examination Board +2, Science, 2019
    ],
  ),
)

== Research Interests
Internet Protocols, Robotics, Linux Development and Packaging, Declerative Package Management and Nix/OS, Functional Programming, Computer Graphics and Vulkan, RISC-V

== Projects

#meta-entry-item-list(
  (
    c1: "2025-2026",
    c2: text(
      tracking: -0.1pt,
    )[A Read/Write Overlay Filesystem Support in a Microkernel Based Operating System (Ongoing)],
    c3: "Purwanchal Campus, Dharan, Nepal",
    body: [Currently working on developing Overlay(Union) File System for Redox OS. It combines multiple different mount points of an existing filesystem into one, resulting in a single directory structure that contains underlying files and sub-directories from all sources.],
  ),
  (
    c1: "2024-2025",
    c2: text(
      tracking: -0.1pt,
    )[A Federated Social Media for Scientific Communicators #link("https://scientiac.space/blog/3o14-social/")[#website-icon()]],
    c3: "Purwanchal Campus, Dharan, Nepal",
    body: [Developed 3o14 (pi), a single user ActivityPub based fediverse client and server that supports rendering mathematical typesetting as a way to scientifically communicate between users, facilating to write posts and replies using Markdown and LaTeX with a complete microblogging experience.],
  ),
  (
    c1: "2024",
    c2: text(
      tracking: -0.1pt,
    )[A Smart Waste Management Miniature Robot using Python and OpenCV #link("https://scientiac.space/blog/yantra-bot/")[#website-icon()]],
    c3: "Purwanchal Campus, Dharan, Nepal",
    body: [Made A Smart Waste Management Miniature Robot using Python and OpenCV that can detect the nearest waste, navigate to it using the shortest path on the map, pick it and reach the destination to dump it and again repeat the process if more waste is detected; with only sensor being an overhead camera tracking the ArUco Markers.],
  ),
)

== Awards

#meta-entry-item-list(
  c2-text-args: (weight: "regular"),
  item-spacing: 0.8em,
  (c1: "Winner", c2: "Yantra Swarmanoid, Yantra 9.0 International Robotics Competition"),
  (c1: "Winner", c2: "Single Button Predictive Communication Device Leveraging Morse Code, X-Hack 3.0, CS50xNepal"),
)

== Exposure
=== Mentoring\ & Event\ Coordination

#meta-entry-item-list(
  (
    c1: "2024-03",
    c2: text(tracking: -0.1pt)[KDE Network Nepal Introductory Event],
    c3: "Purwanchal Campus, Dharan, Nepal",
    body: [Organized an event to celebrate KDE 6 Megarelease, teaching participants about Linux, command line, and Free and Open Source Software (FOSS).],
  ),
  (
    c1: "2023-07",
    c2: text(tracking: -0.1pt)[Robotics Training Leader],
    c3: "Robotics Club, Purwanchal Campus, Dharan, Nepal",
    body: [Facilitated a week of robotics training, enhancing knowledge and skills among club members and fostering strong relationship on campus.],
  ),
)

=== Events Attended

#meta-entry-item-list(
  (
    c1: "2023-12",
    c2: text(tracking: -0.1pt)[GNOMEAsia 2023],
    c3: "Kathmandu, Nepal",
    body: [Engaged with speakers and teams in the FOSS community, gaining insights and emphasizing the values of open-source collaboration.],
  ),
  (
    c1: "2023-09",
    c2: text(tracking: -0.1pt)[GitHub Field Day 2023],
    c3: "Kathmandu, Nepal",
    body: [Participated in a networking event focused on building connections within the tech community.],
  ),
)

== Extras

#meta-entry-item-list(
  c2-text-args: (weight: "regular"),
  item-spacing: 0.8em,
  (c2: [*Spoken Languages*], body: [English (_Academic_), Nepali (_Mother Tongue_), Hindi(_Conversational_)]),
  (c2: [*Hobbies*], body: "Blogging, Poetry, Technical Writing"),
)
