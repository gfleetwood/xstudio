#!/usr/bin/python3

# https://docs.enthought.com/traitsui/traitsui_user_manual/view.html

from traits.api import HasTraits, Str, Range, Enum, CInt, Instance, String, Int, Button
from traitsui.api import Item, View, Group, UItem, TextEditor, HGroup, VGroup, HSplit, VSplit, CodeEditor

class XStudio(HasTraits):
    
  test = Str()
  model = Str()

  environment = Str()
  files = Str()
  help = Str()
  plot = Str()
  viewer = Str()

  history = Str()
  connections = Str()
  packages = Str()

  console = Str()
  terminal = Str()

  g1 = Group(
  UItem('test', dock = 'vertical', width = 0.5, style = 'custom', editor = CodeEditor()),
  UItem('model', dock = 'vertical', width = 0.5, style = 'custom', editor = TextEditor()),
  show_border = True,
  layout = "tabbed"
  )

  g2 = Group(
  UItem('environment', dock = 'vertical', width = 0.5, style = 'custom', editor = CodeEditor()),
  UItem('files', dock = 'vertical', width = 0.5, style = 'custom', editor = TextEditor()),
  UItem('help', dock = 'vertical', width = 0.5, style = 'custom', editor = CodeEditor()),
  UItem('plot', dock = 'vertical', width = 0.5, style = 'custom', editor = TextEditor()),
  UItem('viewer', dock = 'vertical', width = 0.5, style = 'custom', editor = TextEditor()),
  show_border = True,
  layout = "tabbed"
  )

  g3 = Group(
  UItem('history', dock = 'vertical', width = 0.5, style = 'custom', editor = CodeEditor()),
  UItem('connections', dock = 'vertical', width = 0.5, style = 'custom', editor = TextEditor()),
  UItem('packages', dock = 'vertical', width = 0.5, style = 'custom', editor = CodeEditor()),
  show_border = True,
  layout = "tabbed"
  )

  g4 = Group(
  UItem('console', dock = 'vertical', width = 0.5, style = 'custom', editor = CodeEditor()),
  UItem('terminal', dock = 'vertical', width = 0.5, style = 'custom', editor = TextEditor()),
  show_border = True,
  layout = "tabbed"
  )

  row1 = HSplit(g1, g2)
  row2 = HSplit(g3, g4)

  view = View(
  VSplit(row1, row2),
  title = 'XStudio',
  resizable = True,
  height = 1, 
  width = 1
  )

XStudio().configure_traits()
