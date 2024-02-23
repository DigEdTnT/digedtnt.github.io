---
title: TEI Elements
keywords: Elements
---

# TEI Elements

TEI (Text Encoding Initiative) provides guidelines for the digital encoding of texts, represented through various elements categorized into functional groups. This Semantic Markdown distillation focuses on the organizational structure and semantic categorization of 586 TEI elements as per revision e5dd73ed0 of TEI P5 Version 4.7.0, all within the TEI Namespace http://www.tei-c.org/ns/1.0.

- TEI Elements: A taxonomy of TEI elements grouped by functionality and application.
  - Namespace: http://www.tei-c.org/ns/1.0

## TEI elements ordered by module

- analysis: Encompasses simple analytic mechanisms.
  - c (character), cl (clause), interp (interpretation), interpGrp (interpretation group), m (morpheme), pc (punctuation character), phr (phrase), s(s-unit), span associates an interpretative annotation, spanGrp (span group), w (word)
- certainty: Deals with Certainty, Precision, and Responsibility.
  - certainty, precision, respons
- core: Core elements common across all TEI documents.
  - abbr, add, addrLine, address, analytic, author, bibl, biblScope, biblStruct, binaryObject, cb, choice, cit, citedRange, corr, date, del, desc, distinct, divGen, editor, ellipsis, email, emph, expan, foreign, gap, gb, gloss, graphic, head, headItem, headLabel, hi, imprint, index, item, l, label, lb, lg, list, listBibl, measure, measureGrp, media, meeting, mentioned, milestone, monogr, name, note, noteGrp, num, orig, p, pb, postBox, postCode, ptr, pubPlace, publisher, q, quote, rb, ref, reg, relatedItem, resp, respStmt, rs, rt, ruby, said, series, sic, soCalled, sp, speaker, stage, street, teiCorpus, term, textLang, time, title, unclear, unit
- corpus: Specific to corpus texts.
  - activity, channel, constitution, derivation, domain, factuality, interaction, locale, particDesc, preparedness, purpose, setting, settingDesc, textDesc
- dictionaries: Dedicated to dictionary entries and related metadata.
  - case, colloc, def, dictScrap, entry, entryFree, etym, form, gen, gram, gramGrp, hom, hyph, iType, lang, lbl, mood, number, oRef, orth, pRef, per, pos, pron, re, sense, stress, subc, superEntry, syll, tns, usg, xr
- drama: Pertains to performance texts.
  - Elements: actor, camera, caption, castGroup, castItem, castList, epilogue, move, performance, prologue, role, roleDesc, set, sound, spGrp, tech, view 
- figures: For tables, formulæ, notated music, and figures.
  - cell, figDesc, figure, formula, notatedMusic, row, table
- gaiji: Character and glyph documentation.
  - char, charDecl, g, glyph, localProp, mapping, unicodeProp, unihanProp
- header: Elements pertaining to the TEI header.
  - abstract, appInfo, application, authority, availability, biblFull, cRefPattern, calendar, calendarDesc, catDesc, catRef, category, change, citeData, citeStructure, classCode, classDecl, conversion, correction, correspAction, correspContext, correspDesc, creation, distributor, edition, editionStmt, editorialDecl, encodingDesc, extent, fileDesc, funder, geoDecl, handNote, hyphenation, idno, interpretation, keywords, langUsage, language, licence, listChange, listPrefixDef, namespace, normalization, notesStmt, prefixDef, principal, profileDesc, projectDesc, publicationStmt, punctuation, quotation, refState, refsDecl, rendition, revisionDesc, samplingDecl, schemaRef, scriptNote, segmentation, seriesStmt, sourceDesc, sponsor, stdVals, styleDefDecl, tagUsage, tagsDecl, taxonomy, teiHeader, textClass, titleStmt, unitDecl, unitDef, xenoData
- iso-fs: Feature structures for linguistic analysis.
  - bicond, binary, cond, default, f, fDecl, fDescr, fLib, fs, fsConstraints, fsDecl, fsDescr, fsdDecl, fsdLink, fvLib, if, iff, numeric, string, symbol, then, vAlt, vColl, vDefault, vLabel, vMerge, vNot, vRange
- linking: For linking, segmentation, and alignment.
  - ab, alt, altGrp, anchor, annotation, join, joinGrp, link, linkGrp, listAnnotation, seg, standOff, timeline, when
- msdescription: Manuscript Description elements.
  - accMat, acquisition, additional, additions, adminInfo, altIdentifier, binding, bindingDesc, catchwords, collation, collection, colophon, condition, custEvent, custodialHist, decoDesc, decoNote, depth, dim, dimensions, explicit, filiation, finalRubric, foliation, handDesc, height, heraldry, history, incipit, institution, layout, layoutDesc, locus, locusGrp, material, msContents, msDesc, msFrag, msIdentifier, msItem, msItemStruct, msName, msPart, musicNotation, objectDesc, objectType, origDate, origPlace, origin, physDesc, provenance, recordHist, repository, rubric, scriptDesc, seal, sealDesc, secFol, signatures, source, stamp, summary, support, supportDesc, surrogates, typeDesc, typeNote, watermark, width
- namesdates: Names and dates related elements.
  - addName, affiliation, age, birth, bloc, climate, country, death, district, education, event, eventName, faith, floruit, forename, genName, gender, geo, geogFeat, geogName, langKnowledge, langKnown, listEvent, listNym, listObject, listOrg, listPerson, listPlace, listRelation, location, nameLink, nationality, nym, object, objectIdentifier, objectName, occupation, offset, org, orgName, persName, persPronouns, person, personGrp, persona, place, placeName, population, region, relation, residence, roleName, settlement, sex, socecStatus, state, surname, terrain, trait
- nets: Graphs, networks, and trees.
  - arc, eLeaf, eTree, forest, graph, iNode, leaf, listForest, node, root, tree, triangle
- spoken: Transcribed Speech elements.
  - annotationBlock, broadcast, equipment, incident, kinesic, pause, recording, recordingStmt, scriptStmt, shift, transcriptionDesc, u, vocal, writing
- tagdocs: Documentation of TEI and other XML markup languages.
  - altIdent, alternate, anyElement, att, attDef, attList, attRef, classRef, classSpec, classes, code, constraint, constraintSpec, content, dataFacet, dataRef, dataSpec, datatype, defaultVal, eg, egXML, elementRef, elementSpec, empty, equiv, exemplum, gi, ident, listRef, macroRef, macroSpec, memberOf, model, modelGrp, modelSequence, moduleRef, moduleSpec, outputRendition, param, paramList, paramSpec, remarks, schemaSpec, sequence, specDesc, specGrp, specGrpRef, specList, tag, textNode, val, valDesc, valItem, valList
- textcrit: Critical Apparatus elements.
  - app, lacunaEnd, lacunaStart, lem, listApp, listWit, rdg, rdgGrp, variantEncoding, wit, witDetail, witEnd, witStart, witness
- textstructure: Default text structure elements.
  - TEI, argument, back, body, byline, closer, dateline, div, div1, div2, div3, div4, div5, div6, div7, docAuthor, docDate, docEdition, docImprint, docTitle, epigraph, floatingText, front, group, imprimatur, opener, postscript, salute, signed, text, titlePage, titlePart, trailer
- transcr: Transcription of primary sources.
  - addSpan, am, damage, damageSpan, delSpan, ex, facsimile, fw, handNotes, handShift, line, listTranspose, metamark, mod, path, redo, restore, retrace, secl, sourceDoc, space, subst, substJoin, supplied, surface, surfaceGrp, surplus, transpose, undo, zone
- verse: Verse structures.
  - caesura, metDecl, metSym, rhyme