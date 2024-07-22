ctx.createRectangularRegion('usb_core',62,40,70,48)
usb_core = []

for k,v in ctx.nets:
    if "usb_core" in k:
        usb_core += k
        for u in v.users:
            print(f'Selecting: {k} - {u.cell.name} for usb_core region')
            ctx.constrainCellToRegion(u.cell.name, 'usb_core')


ctx.createRectangularRegion('usb',54,32,70,48)
for k,v in ctx.nets:
    if "cdcusbphy" in k:
        if k not in usb_core:
            for u in v.users:
#                print(f'Selecting: {k} - {u.cell.name} for usb region')
                ctx.constrainCellToRegion(u.cell.name, 'usb')

#for k,v in ctx.cells:
#    if "usb_core" in k:
#        print(f'selecting: {k} for usb region')
#        ctx.constrainCellToRegion(k, 'usb')