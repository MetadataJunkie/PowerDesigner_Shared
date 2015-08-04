'Sample to test GitHub '

dim currentRelp
set currentRelp = activemodel.FindChildByName("Relationship_18", PdLDM.cls_Relationship)
output " starting from " & currentRelp

dim mynewRelp
set mynewRelp = activemodel.relationships.createnew()

mynewRelp.Name = "trying it out"

output " created " & mynewRelp

set mynewRelp.Entity1 = currentRelp.Entity1
set mynewRelp.Entity2 =  activemodel.FindChildByName("Exchange Rate", PdLDM.cls_Entity)

mynewRelp.Stereotype = "Created by a script"

mynewRelp.Comment = currentRelp.Comment
mynewRelp.Description = currentRelp.Description
mynewRelp.Annotation = currentRelp.Annotation

mynewRelp.Entity1ToEntity2Role = currentRelp.Entity1ToEntity2Role
mynewRelp.Entity1ToEntity2RoleCardinality = currentRelp.Entity1ToEntity2RoleCardinality
mynewRelp.Entity1ToEntity2RoleMandatory = currentRelp.Entity1ToEntity2RoleMandatory
mynewRelp.Entity1ToEntity2RoleMaximumCardinality = currentRelp.Entity1ToEntity2RoleMaximumCardinality
mynewRelp.Entity1ToEntity2RoleMinimumCardinality = currentRelp.Entity1ToEntity2RoleMinimumCardinality

mynewRelp.Entity2ToEntity1Role = currentRelp.Entity2ToEntity1Role
mynewRelp.Entity2ToEntity1RoleCardinality = currentRelp.Entity2ToEntity1RoleCardinality
mynewRelp.Entity2ToEntity1RoleMandatory = currentRelp.Entity2ToEntity1RoleMandatory
mynewRelp.Entity2ToEntity1RoleMaximumCardinality = currentRelp.Entity2ToEntity1RoleMaximumCardinality
mynewRelp.Entity2ToEntity1RoleMinimumCardinality = currentRelp.Entity2ToEntity1RoleMinimumCardinality

mynewRelp.DependentRole = currentRelp.DependentRole
  	
'mynewRelp.setExtendedAttribute("LDM_denorm.CollapsingRole") = currentRelp.getExtendedAttribute("LDM_denorm.CollapsingRole")
