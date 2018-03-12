project('ym2151-decap')

cdata = configuration_data()
cdata.set('TOP_SRCDIR', meson.source_root())
cdata.set('TOP_BUILDDIR', meson.build_root())

gbi = find_program('generate-bitmask-images')
gc = find_program('generate-circuit')
mschem = find_program('mschem')


in = 'ym2151-layers.svg'

gbi_in = configure_file(input : 'gbi-layers.txt.in',
					   output: 'gbi-layers.txt',
					   configuration: cdata,
					   install: false)
gbi_out = ['l-active.pbm',
		   'l-buried.pbm',
		   'l-metal.pbm',
		   'l-poly.pbm',
		   'l-vias.pbm']

gc_in = configure_file(input : 'gc-layers.txt.in',
					   output: 'gc-layers.txt',
					   configuration: cdata,
					   install: false)
gc_out = ['ym2151.map',
		  'ym2151.txt']

remap = configure_file(input : 'sgen/remap.lua.in',
					   output: 'remap.lua',
					   configuration: cdata,
					   install: false)
drm = configure_file(input : 'sgen/drm.lua.in',
					   output: 'drm.lua',
					   configuration: cdata,
					   install: false)

lua_functions = 'sgen/functions.lua'

user_lua = 'sgen/blog.lua'

mschem_deps = ['ym2151-pads.txt',
			   'ym2151-pins.txt']

out = ['ym2151-schem.txt', 'ym2151-schem.svg']


bitmasks = custom_target('bitmasks',
	command : [gbi, '@INPUT0@'],
	input : [gbi_in, in],
	output : gbi_out,
	build_by_default : true)

circuit = custom_target('circuit',
	command : [gc, '@INPUT@'],
	input : gc_in,
	output : gc_out,
	depends : bitmasks,
	build_by_default : true)

# Multiple outputs are possible from mschem. Default to run all?
# May require multiple versions of remap.lua.
schematic = custom_target('schematic',
	command : [mschem, '@INPUT0@'],
	input : [remap, drm, mschem_deps, lua_functions, user_lua],
	output : out,
	depends : circuit,
	build_by_default : true)
