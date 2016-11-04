" ==============================================================================
" File:            signalflow.vim
" Description:     SignalFx SignalFlow Analytics v2 language Vim syntax file
" Language:        SignalFlow
" Maintainer:      Maxime Petazzoni <max@signalfx.com>
" Latest Revision: 11 December 2015
"
" Copyright (C) 2015-2016 SignalFx, Inc. All rights reserved.
" ==============================================================================

if exists("b:current_syntax")
  finish
endif

" All blocks
syntax keyword Function _collector
syntax keyword Function _random
syntax keyword Function _seq
syntax keyword Function _turnstile
syntax keyword Function abs
syntax keyword Function accumulator
syntax keyword Function bottom
syntax keyword Function ciel
syntax keyword Function const
syntax keyword Function count
syntax keyword Function data
syntax keyword Function delta
syntax keyword Function detect
syntax keyword Function dimensionalize
syntax keyword Function duration
syntax keyword Function events
syntax keyword Function extrapolate
syntax keyword Function fetch
syntax keyword Function filter
syntax keyword Function find
syntax keyword Function floor
syntax keyword Function graphite
syntax keyword Function groupby
syntax keyword Function id
syntax keyword Function integrate
syntax keyword Function log
syntax keyword Function log10
syntax keyword Function map
syntax keyword Function math
syntax keyword Function max
syntax keyword Function mean
syntax keyword Function mean_plus_stddev
syntax keyword Function median
syntax keyword Function min
syntax keyword Function newrelic
syntax keyword Function percentile
syntax keyword Function pow
syntax keyword Function print
syntax keyword Function publish
syntax keyword Function random
syntax keyword Function rateofchange
syntax keyword Function sample
syntax keyword Function sample_stddev
syntax keyword Function sample_variance
syntax keyword Function select
syntax keyword Function size
syntax keyword Function split
syntax keyword Function sqrt
syntax keyword Function stats
syntax keyword Function stddev
syntax keyword Function sum
syntax keyword Function threshold
syntax keyword Function timeshift
syntax keyword Function top
syntax keyword Function variance
syntax keyword Function when
syntax keyword Function window

syntax keyword Keyword def
syntax keyword Keyword elif
syntax keyword Keyword else
syntax keyword Keyword if
syntax keyword Keyword is
syntax keyword Keyword lambda
syntax keyword Keyword not
syntax keyword Keyword return

syntax keyword Number None

syntax region  Comment                start="#" end="$"                         extend
syntax region  FlowBlockParameters    start="("  end=")"                        keepend transparent matchgroup=Function
syntax region  String                 start=/["']/ skip=/(\\"|\\')/ end=/["']/  extend containedin=FlowBlockParameters
syntax match   Annotation             /@[^:]\+/
syntax match   Number                 /\(true\|false\)/
syntax match   Number                 /\(\w\)\@<![-+]\?\d\+p\?/                 containedin=FlowBlockParameters

" Highlight group links
hi def link Annotation Operator
hi def link FlowBlockArg PreProc
let b:current_syntax = 'signalflow'
