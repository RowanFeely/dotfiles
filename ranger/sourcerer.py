# -*- coding: utf-8 -*-
"""
    Sourcerer Colorscheme
    ~~~~~~~~~~~~~~~~~~~~~

    Converted by Vim Colorscheme Converter
"""
from pygments.style import Style
from pygments.token import Token, Comment, Name, Keyword, Generic, Number, Operator, String

class SourcererStyle(Style):

    background_color = '#222222'
    styles = {
        Token:              'noinherit #c2c2b0 bg:#222222',
        Comment:            'noinherit #686858 italic',
        Name.Attribute:     'noinherit #faf4c6',
        Generic.Error:      'noinherit',
        Name.Entity:        'noinherit #719611',
        String:             'noinherit #779b70',
        Generic.Inserted:   'noinherit #000000 bg:#3cb371',
        Keyword:            'noinherit #90b0d1',
        Name.Tag:           'noinherit #90b0d1',
        Number:             'noinherit #cc8800',
        Name.Function:      'noinherit #faf4c6',
        Generic.Traceback:  '#ff6a6a bold',
        Name.Variable:      'noinherit #9ebac2',
        Generic.Deleted:    'noinherit #000000 bg:#aa4450',
        Generic.Subheading: '#528b8b bold',
        Generic.Heading:    '#528b8b bold',
        Keyword.Type:       'noinherit #7e8aa2',
        Name.Constant:      'noinherit #ff9800',
        Generic.Emph:       'underline',
        Generic.Output:     'noinherit #404050',
        Comment.Preproc:    'noinherit #528b8b',
    }
