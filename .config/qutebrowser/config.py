config.bind('<z><l>', 'spawn --userscript qute-pass -U secret --username-pattern "login: (.+)"')
config.bind('<z><u><l>', 'spawn --userscript qute-pass --username-only -U secret --username-pattern "login: (.+)"')
config.bind('<z><p><l>', 'spawn --userscript qute-pass --password-only -U secret --username-pattern "login: (.+)"')
config.bind('<z><o><l>', 'spawn --userscript qute-pass --otp-only -U secret --username-pattern "login: (.+)"')

c.window.hide_decoration = True
c.completion.height = '30%'
monospace = 'SFNS Display'
font_size = 13

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

config.source('qutewal.py')
