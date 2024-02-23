---
title: TEI Attribute Classes Overview
keywords: attribute classes
---

# TEI Attribute Classes Overview

## Analysis

- Simple analytic mechanisms
  - att.lexicographic.normalized provides attributes for usage within word-level elements in the analysis module and within lexicographic microstructure in the dictionaries module.
  - att.linguistic provides a set of attributes concerning linguistic features of tokens, for usage within token-level elements, specifically w and pc in the analysis module.
  - att.global.analytic provides additional global attributes for associating specific analyses or interpretations with appropriate portions of a text.

## Core Elements

- Common to all TEI documents
  - att.milestoneUnit provides attributes to indicate the type of section which is changing at a specific milestone. 

## Dictionaries

- att.entryLike provides attributes used to distinguish different styles of dictionary entries. 
- att.lexicographic provides a set of attributes for specifying standard and normalized values, grammatical functions, alternate or equivalent forms, and information about composite parts. 

## Figures

- Tables, formulæ, notated music, and figures
  - att.tableDecoration provides attributes used to decorate rows or cells of a table.

## Gaiji

- Character and glyph documentation
  - att.gaijiProp provides attributes for defining the properties of non-standard characters or glyphs.

## Header

- The TEI header
  - att.citeStructurePart provides attributes for selecting particular elements within a document.
  - att.patternReplacement provides attributes for regular-expression matching and replacement.

## Linking

- Linking, segmentation, and alignment
  - att.global.linking provides a set of attributes for hypertextual linking.

## Manuscript Description

- att.msExcerpt (manuscript excerpt) provides attributes used to describe excerpts from a manuscript placed in a description thereof. 
- att.msClass provides attributes to indicate text type or classification. 

## Names and Dates

- att.datable.custom provides attributes for normalization of elements that contain datable events to a custom dating system (i.e. other than the Gregorian used by W3 and ISO).
- att.datable.iso provides attributes for normalization of elements that contain datable events using the ISO 8601:2004 standard.

## Spoken

- Transcribed Speech
  - att.duration provides attributes for normalization of elements that contain datable events.

## Tagdocs

- Documentation of TEI and other XML markup languages
  - att.translatable provides attributes used to indicate the status of a translatable portion of an ODD document.
  - att.predicate provides attributes for filtering by an XPath predicate expression. 
  - att.repeatable provides attributes for the elements which define component parts of a content model.
  - att.combinable provides attributes indicating how multiple references to the same object in a schema should be combined
  - att.identified provides identifying attributes for elements which can be subsequently referenced by means of a key attribute.
  - att.deprecated provides attributes indicating how a deprecated feature will be treated in future releases.
  - att.namespaceable provides attributes indicating the target namespace for an object being created.

## TEI

- Declarations for classes, datatypes, and macros available to all TEI modules
  - Attributes covering anchoring, ascription, canonical definitions, ranging, dimensions, writing, damage, breaking, referencing, datable attributes (W3C and ISO), documentation status, edition principles, rendition, source information, hand features, internet media types, media documentation, interpretation, measurement, naming, notation, placement, typing, pointing, scoping, segmentation, sorting, spanning, style definition, timing, transcription, citation, formulae, location, partials, personal identification, calendar systems

## Textcrit

- Critical Apparatus
  - att.rdgPart provides attributes to mark the beginning or ending of a fragmentary manuscript or other witness.
  - att.witnessed provides attributes used to identify the witnesses supporting a particular reading in a critical apparatus. 
  - att.textCritical defines a set of attributes common to all elements representing variant readings in text critical work.

## Transcr

- Transcription of primary sources
  - att.global.facs provides attributes used to express correspondence between an element and all or part of a facsimile image or surface.
  - att.global.change provides attributes allowing its member elements to specify one or more states or revision campaigns with which they are associated.
  - att.coordinated provides attributes that can be used to position their parent element within a two dimensional coordinate system.

## Verse

- Verse structures
  - att.metrical defines a set of attributes that certain elements may use to represent metrical information.
  - att.enjamb (enjambement) provides attributes that may be used to indicate enjambement of the parent element.