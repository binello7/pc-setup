from qgis.core import *
from qgis.gui import *
    
@qgsfunction(args='auto', group='Custom')
def fill_dischargecoeff(abbrevs, vals, feature, parent):
    dict_abbrevs_vals = {}
    for (a, v) in zip(abbrevs, vals):
        dict_abbrevs_vals.update({a:v})
    if feature.attributes()[3] in abbrevs:
        return dict_abbrevs_vals[feature.attributes()[3]]
