config.bind('<z><l>', 'spawn --userscript qute-pass -U secret --username-pattern "login: (.+)"')
config.bind('<z><u><l>', 'spawn --userscript qute-pass --username-only -U secret --username-pattern "login: (.+)"')
config.bind('<z><p><l>', 'spawn --userscript qute-pass --password-only -U secret --username-pattern "login: (.+)"')
config.bind('<z><o><l>', 'spawn --userscript qute-pass --otp-only -U secret --username-pattern "login: (.+)"')

c.window.hide_decoration = True
c.completion.height = '30%'
monospace = 'Fira Code'
font_size = 12

# colors
bg = "#2f343f"
fg = "#f8f8f2"
fg_dark = "#44475a" 
accent = "#6272a4"

unset = "#ff0000"

# Fonts
font_size_str = str(font_size) + 'pt'
font_size_small_str = str(font_size - 1) + 'pt'

c.fonts.monospace = monospace
c.fonts.completion.entry = font_size_str + ' monospace'
c.fonts.completion.category = 'bold'
c.fonts.debug_console = font_size_str + ' monospace' 
c.fonts.downloads = font_size_str + ' monospace'
c.fonts.hints = font_size_small_str + ' monospace'
c.fonts.keyhint = font_size_str + ' monospace'
c.fonts.messages.error = font_size_str + ' monospace'
c.fonts.messages.info = font_size_str + ' monospace'
c.fonts.messages.warning = font_size_str + ' monospace'
c.fonts.prompts = font_size_str + ' monospace'
c.fonts.statusbar = font_size_small_str + ' monospace'
c.fonts.tabs = font_size_str  + ' monospace'
c.fonts.web.family.standard = ''
c.fonts.web.family.fixed = ''
c.fonts.web.family.serif = ''
c.fonts.web.family.sans_serif = ''
c.fonts.web.family.cursive = ''
c.fonts.web.family.fantasy = ''
c.fonts.web.size.default = 16
c.fonts.web.size.default_fixed = 13
c.fonts.web.size.minimum = 0
c.fonts.web.size.minimum_logical = 6

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = bg

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = bg

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = bg

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = fg

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = bg

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = bg

# Text color of the completion widget.
# Type: QtColor
c.colors.completion.fg = fg

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = fg_dark

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = bg

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.item.selected.border.top = bg

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = fg

# Foreground color of the matched text in the completion.
# Type: QssColor
c.colors.completion.match.fg = accent

# Color of the scrollbar in completion view
# Type: QssColor
c.colors.completion.scrollbar.bg = bg

# Color of the scrollbar handle in completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = fg

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = bg

# Background color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.bg = accent

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = fg

# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = unset

# Color gradient interpolation system for download backgrounds.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.downloads.system.bg = 'none'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = bg

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = fg

# Font color for the matched part of hints.
# Type: QssColor
c.colors.hints.match.fg = accent

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = bg

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = fg

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = fg

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = bg

# Border color of an error message.
# Type: QssColor
c.colors.messages.error.border = bg

# Foreground color of an error message.
# Type: QssColor
c.colors.messages.error.fg = fg

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = bg

# Border color of an info message.
# Type: QssColor
c.colors.messages.info.border = bg

# Foreground color an info message.
# Type: QssColor
c.colors.messages.info.fg = fg

# Background color of a warning message.
# Type: QssColor
c.colors.messages.warning.bg = fg

# Border color of a warning message.
# Type: QssColor
c.colors.messages.warning.border = fg

# Foreground color a warning message.
# Type: QssColor
c.colors.messages.warning.fg = fg

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = bg

# # Border used around UI elements in prompts.
# # Type: String
c.colors.prompts.border = '1px solid ' + bg

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = fg

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = bg

# Background color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.bg = bg

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = fg

# Background color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.bg = bg

# Foreground color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.fg = fg

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = bg

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = fg

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = bg

# Foreground color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.fg = fg

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = fg

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = bg

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = bg

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = fg

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = bg

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = fg

# Background color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.bg = bg

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = fg

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = fg

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = bg

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = fg

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = bg

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = fg

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = fg

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = fg

# Color gradient start for the tab indicator.
# Type: QtColor
# c.colors.tabs.indicator.start = bg

# Color gradient end for the tab indicator.
# Type: QtColor
# c.colors.tabs.indicator.stop = fg

# Color gradient interpolation system for the tab indicator.
# Type: ColorSystem
# Valid values:
#   - rgb: Interpolate in the RGB color system.
#   - hsv: Interpolate in the HSV color system.
#   - hsl: Interpolate in the HSL color system.
#   - none: Don't show a gradient.
c.colors.tabs.indicator.system = 'none'

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = bg

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = bg

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = bg

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = fg_dark

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = bg

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = fg_dark

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = bg

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = accent

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = bg

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = accent

# Background color for webpages if unset (or empty to use the theme's
# color)
# Type: QtColor
c.colors.webpage.bg = bg

