" Copyright (C) 2015 SignalFx, Inc. All rights reserved.

" SignalFx SignalFlow analytics language Vim syntax file
" Language: SignalFlow
" Maintainer: Maxime Petazzoni <max@signalfx.com>
" Latest Revision: 11 December 2015

if exists("b:current_syntaxtax")
  finish
endif

" All blocks
syntax keyword BlockName accumulator
syntax keyword BlockName _collector
syntax keyword BlockName const
syntax keyword BlockName delta
syntax keyword BlockName dimensionalize
syntax keyword BlockName fetch
syntax keyword BlockName find
syntax keyword BlockName groupby
syntax keyword BlockName id
syntax keyword BlockName integrate
syntax keyword BlockName math
syntax keyword BlockName print
syntax keyword BlockName publish
syntax keyword BlockName random
syntax keyword BlockName rateofchange
syntax keyword BlockName sample
syntax keyword BlockName select
syntax keyword BlockName seq
syntax keyword BlockName split
syntax keyword BlockName stats
syntax keyword BlockName threshold
syntax keyword BlockName _turnstile
syntax keyword BlockName window

syntax match   PipelineThinArrow  /->/
syntax match   PipelineThickArrow /=>/
syntax match   BlockInputPort     /?\w\+/
syntax match   BlockOutputPort    /!\w\+/

syntax region  Comment               start="#"  end="$"  extend
syntax region  MacroBlockPorts       start="\[" end="\]" keepend transparent matchgroup=Comment
syntax region  MacroBlockExpressions start="{"  end="}"  keepend transparent matchgroup=Comment
syntax region  BlockParameters       start="("  end=")"  keepend transparent matchgroup=Function
syntax region  String                start=/["']/ skip=/(\\"|\\')/ end=/["']/ extend containedin=BlockParameters
syntax match   Number     /\(\w\)\@<![-+]\?\d\+p\?/     containedin=BlockParameters
syntax match   BlockArg   /\([(, ]\)\@<=\w\+\(=\)\@=/   containedin=BlockParameters

" Highlight group links
let b:current_syntax = 'signalflow'
hi def link BlockName           Function
hi def link BlockArg            Label
hi def link BlockInputPort      Type
hi def link BlockOutputPort     Type
hi def link PipelineThinArrow   Operator
hi def link PipelineThickArrow  Operator
