# Ranger theme
# Tasty wine colors

from ranger.gui.colorscheme import ColorScheme
from ranger.gui.color import *

class Default(ColorScheme):
	def use(self, context):
		fg, bg, attr = default_colors

		if context.reset:
			return default_colors

		elif context.in_browser:
			if context.selected:
				attr = reverse
			else:
				attr = normal
			if context.empty or context.error:
				bg = 1
			if context.border:
				attr = normal
				fg = 233
			if context.media:
				if context.image:
					fg = 6
				else:
					fg = 4
			if context.container:
				#attr |= bold
				fg = 5
			if context.directory:
				attr |= normal
				fg = 5
			elif context.executable and not \
					any((context.media, context.container,
						context.fifo, context.socket)):
				attr |= normal
				fg = 6
			if context.socket:
				fg = 5
			if context.fifo or context.device:
				fg = yellow
				#if context.device:
					#attr |= bold
			if context.link:
				fg = context.good and 4 or 5
			if context.tag_marker and not context.selected:
				#attr |= bold
				if fg in (1, 5):
					fg = 233
				else:
					fg = 6
			if not context.selected and (context.cut or context.copied):
				fg = 2
				#attr |= bold
			if context.main_column:
				if context.selected:
					attr |= normal
				if context.marked:
					attr |= bold
					fg = yellow
			if context.badinfo:
				if attr & reverse:
					bg = 1
				else:
					fg = green

		elif context.in_titlebar:
			attr |= normal
			if context.hostname:
				#attr |= bold
				fg = context.bad and 1 or 2
			elif context.directory:
				fg = 5
			elif context.tab:
				if context.good:
				        bg = 5
				        fg = 0
			elif context.link:
				4

		elif context.in_statusbar:
			if context.permissions:
				if context.good:
					fg = 2
				elif context.bad:
					fg = 1
			if context.marked:
				#attr |= bold | reverse
				fg = yellow
			if context.message:
				if context.bad:
					#attr |= bold
					fg = 1

		if context.text:
			if context.highlight:
				attr |= reverse

		if context.in_taskview:
			if context.title:
				fg = blue

			if context.selected:
				attr |= reverse

		return fg, bg, attr

