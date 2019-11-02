/*
Copyright 2008-2019 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.
pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.
*/

/*
This file was automatically generated using the pythonocc_generator, see
https://github.com/tpaviot/pythonocc-generator.

This file is platform independant, but was generated under the following
conditions:

- time : 2019-11-03 11:38:11
- operating system : debian Linux 4.15.0-66-generic
- occt version targeted : 7.4.0
*/

%define UNITSAPIDOCSTRING
"No docstring provided."
%enddef
%module (package="OCC.Core", docstring=UNITSAPIDOCSTRING) UnitsAPI

#pragma SWIG nowarn=504,325,503,520,350,351,383,389,394,395, 404

%{
#ifdef WNT
#pragma warning(disable : 4716)
#endif
%}

%include ../common/CommonIncludes.i
%include ../common/ExceptionCatcher.i
%include ../common/FunctionTransformers.i
%include ../common/Operators.i
%include ../common/OccHandle.i


%include UnitsAPI_headers.i

/* public enums */
enum UnitsAPI_SystemUnits {
	UnitsAPI_DEFAULT = 0,
	UnitsAPI_SI = 1,
	UnitsAPI_MDTV = 2,
};

/* end public enums declaration */

/* templates */
/* end templates declaration */

/* typedefs */
/* end typedefs declaration */

/* handles */
/* end handles declaration */

%rename(unitsapi) UnitsAPI;
class UnitsAPI {
	public:
		%feature("compactdefaultargs") AnyFromLS;
		%feature("autodoc", "	* Converts the local system units value to the local unit value. Example: AnyFromLS(25.4,'in.') returns 1. if the LocalSystem is MDTV. Note: aUnit is also used to identify the type of physical quantity to convert.

	:param aData:
	:type aData: float
	:param aUnit:
	:type aUnit: char *
	:rtype: float
") AnyFromLS;
		static Standard_Real AnyFromLS (const Standard_Real aData,const char * aUnit);
		%feature("compactdefaultargs") AnyFromSI;
		%feature("autodoc", "	* Converts the SI system units value to the local unit value. Example: AnyFromSI(0.0254,'in.') returns 0.001 Note: aUnit is also used to identify the type of physical quantity to convert.

	:param aData:
	:type aData: float
	:param aUnit:
	:type aUnit: char *
	:rtype: float
") AnyFromSI;
		static Standard_Real AnyFromSI (const Standard_Real aData,const char * aUnit);
		%feature("compactdefaultargs") AnyToAny;
		%feature("autodoc", "	* Converts the local unit value to another local unit value. Example: AnyToAny(0.0254,'in.','millimeter') returns 1. ;

	:param aData:
	:type aData: float
	:param aUnit1:
	:type aUnit1: char *
	:param aUnit2:
	:type aUnit2: char *
	:rtype: float
") AnyToAny;
		static Standard_Real AnyToAny (const Standard_Real aData,const char * aUnit1,const char * aUnit2);
		%feature("compactdefaultargs") AnyToLS;
		%feature("autodoc", "	* Converts the local unit value to the local system units value. Example: AnyToLS(1.,'in.') returns 25.4 if the LocalSystem is MDTV.

	:param aData:
	:type aData: float
	:param aUnit:
	:type aUnit: char *
	:rtype: float
") AnyToLS;
		static Standard_Real AnyToLS (const Standard_Real aData,const char * aUnit);
		%feature("compactdefaultargs") AnyToLS;
		%feature("autodoc", "	* Converts the local unit value to the local system units value. and gives the associated dimension of the unit

	:param aData:
	:type aData: float
	:param aUnit:
	:type aUnit: char *
	:param aDim:
	:type aDim: opencascade::handle<Units_Dimensions> &
	:rtype: float
") AnyToLS;
		static Standard_Real AnyToLS (const Standard_Real aData,const char * aUnit,opencascade::handle<Units_Dimensions> & aDim);
		%feature("compactdefaultargs") AnyToSI;
		%feature("autodoc", "	* Converts the local unit value to the SI system units value. Example: AnyToSI(1.,'in.') returns 0.0254

	:param aData:
	:type aData: float
	:param aUnit:
	:type aUnit: char *
	:rtype: float
") AnyToSI;
		static Standard_Real AnyToSI (const Standard_Real aData,const char * aUnit);
		%feature("compactdefaultargs") AnyToSI;
		%feature("autodoc", "	* Converts the local unit value to the SI system units value. and gives the associated dimension of the unit

	:param aData:
	:type aData: float
	:param aUnit:
	:type aUnit: char *
	:param aDim:
	:type aDim: opencascade::handle<Units_Dimensions> &
	:rtype: float
") AnyToSI;
		static Standard_Real AnyToSI (const Standard_Real aData,const char * aUnit,opencascade::handle<Units_Dimensions> & aDim);
		%feature("compactdefaultargs") Check;
		%feature("autodoc", "	* Checks the coherence between the quantity <aQuantity> and the unit <aUnits> in the current system and returns False when it's WRONG.

	:param aQuantity:
	:type aQuantity: char *
	:param aUnit:
	:type aUnit: char *
	:rtype: bool
") Check;
		static Standard_Boolean Check (const char * aQuantity,const char * aUnit);
		%feature("compactdefaultargs") CurrentFromAny;
		%feature("autodoc", "	* Converts the aData value expressed in the unit aUnit, into the current unit for the working environment, as defined for the physical quantity aQuantity by the last call to the SetCurrentUnit function.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:param aUnit:
	:type aUnit: char *
	:rtype: float
") CurrentFromAny;
		static Standard_Real CurrentFromAny (const Standard_Real aData,const char * aQuantity,const char * aUnit);
		%feature("compactdefaultargs") CurrentFromLS;
		%feature("autodoc", "	* Converts the local system units value to the current unit value. Example: CurrentFromLS(1000.,'LENGTH') returns 1. if current length unit is meter and LocalSystem is MDTV.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:rtype: float
") CurrentFromLS;
		static Standard_Real CurrentFromLS (const Standard_Real aData,const char * aQuantity);
		%feature("compactdefaultargs") CurrentFromSI;
		%feature("autodoc", "	* Converts the SI system units value to the current unit value. Example: CurrentFromSI(0.001,'LENGTH') returns 1 if current length unit is millimeter.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:rtype: float
") CurrentFromSI;
		static Standard_Real CurrentFromSI (const Standard_Real aData,const char * aQuantity);
		%feature("compactdefaultargs") CurrentToAny;
		%feature("autodoc", "	* Converts the aData value expressed in the current unit for the working environment, as defined for the physical quantity aQuantity by the last call to the SetCurrentUnit function, into the unit aUnit.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:param aUnit:
	:type aUnit: char *
	:rtype: float
") CurrentToAny;
		static Standard_Real CurrentToAny (const Standard_Real aData,const char * aQuantity,const char * aUnit);
		%feature("compactdefaultargs") CurrentToLS;
		%feature("autodoc", "	* Converts the current unit value to the local system units value. Example: CurrentToLS(1.,'LENGTH') returns 1000. if the current length unit is meter and LocalSystem is MDTV.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:rtype: float
") CurrentToLS;
		static Standard_Real CurrentToLS (const Standard_Real aData,const char * aQuantity);
		%feature("compactdefaultargs") CurrentToSI;
		%feature("autodoc", "	* Converts the current unit value to the SI system units value. Example: CurrentToSI(1.,'LENGTH') returns 0.001 if current length unit is millimeter.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:rtype: float
") CurrentToSI;
		static Standard_Real CurrentToSI (const Standard_Real aData,const char * aQuantity);
		%feature("compactdefaultargs") CurrentUnit;
		%feature("autodoc", "	* Returns the current unit dimension <aUnit> from the unit quantity <aQuantity>.

	:param aQuantity:
	:type aQuantity: char *
	:rtype: char *
") CurrentUnit;
		static const char * CurrentUnit (const char * aQuantity);
		%feature("compactdefaultargs") DimensionAmountOfSubstance;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionAmountOfSubstance;
		static opencascade::handle<Units_Dimensions> DimensionAmountOfSubstance ();
		%feature("compactdefaultargs") DimensionElectricCurrent;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionElectricCurrent;
		static opencascade::handle<Units_Dimensions> DimensionElectricCurrent ();
		%feature("compactdefaultargs") DimensionLength;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionLength;
		static opencascade::handle<Units_Dimensions> DimensionLength ();
		%feature("compactdefaultargs") DimensionLess;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionLess;
		static opencascade::handle<Units_Dimensions> DimensionLess ();
		%feature("compactdefaultargs") DimensionLuminousIntensity;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionLuminousIntensity;
		static opencascade::handle<Units_Dimensions> DimensionLuminousIntensity ();
		%feature("compactdefaultargs") DimensionMass;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionMass;
		static opencascade::handle<Units_Dimensions> DimensionMass ();
		%feature("compactdefaultargs") DimensionPlaneAngle;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionPlaneAngle;
		static opencascade::handle<Units_Dimensions> DimensionPlaneAngle ();
		%feature("compactdefaultargs") DimensionSolidAngle;
		%feature("autodoc", "	* Returns the basic dimensions.

	:rtype: opencascade::handle<Units_Dimensions>
") DimensionSolidAngle;
		static opencascade::handle<Units_Dimensions> DimensionSolidAngle ();
		%feature("compactdefaultargs") DimensionThermodynamicTemperature;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionThermodynamicTemperature;
		static opencascade::handle<Units_Dimensions> DimensionThermodynamicTemperature ();
		%feature("compactdefaultargs") DimensionTime;
		%feature("autodoc", "	:rtype: opencascade::handle<Units_Dimensions>
") DimensionTime;
		static opencascade::handle<Units_Dimensions> DimensionTime ();
		%feature("compactdefaultargs") Dimensions;
		%feature("autodoc", "	* return the dimension associated to the quantity

	:param aQuantity:
	:type aQuantity: char *
	:rtype: opencascade::handle<Units_Dimensions>
") Dimensions;
		static opencascade::handle<Units_Dimensions> Dimensions (const char * aQuantity);
		%feature("compactdefaultargs") LSToSI;
		%feature("autodoc", "	* Converts the local system units value to the SI system unit value. Example: LSToSI(1.,'LENGTH') returns 0.001 if the local system length unit is millimeter.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:rtype: float
") LSToSI;
		static Standard_Real LSToSI (const Standard_Real aData,const char * aQuantity);
		%feature("compactdefaultargs") LocalSystem;
		%feature("autodoc", "	* Returns the current local system units.

	:rtype: UnitsAPI_SystemUnits
") LocalSystem;
		static UnitsAPI_SystemUnits LocalSystem ();
		%feature("compactdefaultargs") Reload;
		%feature("autodoc", "	:rtype: void
") Reload;
		static void Reload ();
		%feature("compactdefaultargs") SIToLS;
		%feature("autodoc", "	* Converts the SI system unit value to the local system units value. Example: SIToLS(1.,'LENGTH') returns 1000. if the local system length unit is millimeter.

	:param aData:
	:type aData: float
	:param aQuantity:
	:type aQuantity: char *
	:rtype: float
") SIToLS;
		static Standard_Real SIToLS (const Standard_Real aData,const char * aQuantity);
		%feature("compactdefaultargs") Save;
		%feature("autodoc", "	* saves the units in the file .CurrentUnits of the directory pointed by the CSF_CurrentUnitsUserDefaults environment variable.

	:rtype: void
") Save;
		static void Save ();
		%feature("compactdefaultargs") SetCurrentUnit;
		%feature("autodoc", "	* Sets the current unit dimension <aUnit> to the unit quantity <aQuantity>. Example: SetCurrentUnit('LENGTH','millimeter')

	:param aQuantity:
	:type aQuantity: char *
	:param aUnit:
	:type aUnit: char *
	:rtype: void
") SetCurrentUnit;
		static void SetCurrentUnit (const char * aQuantity,const char * aUnit);
		%feature("compactdefaultargs") SetLocalSystem;
		%feature("autodoc", "	* Sets the local system units. Example: SetLocalSystem(UnitsAPI_MDTV)

	:param aSystemUnit: default value is UnitsAPI_SI
	:type aSystemUnit: UnitsAPI_SystemUnits
	:rtype: void
") SetLocalSystem;
		static void SetLocalSystem (const UnitsAPI_SystemUnits aSystemUnit = UnitsAPI_SI);
};


%extend UnitsAPI {
	%pythoncode {
	__repr__ = _dumps_object
	}
};
/* harray1 class */
/* harray2 class */
/* harray2 class */
