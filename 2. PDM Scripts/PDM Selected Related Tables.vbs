Sub %Method%(obj) 
Dim References 
Dim Reference 
Dim simple 
dim find 
   set References=obj.InReferences 
   for each Reference in References 
      set find =  activediagram.FindSymbol(Reference, false) 
      if find is nothing then 
         set simple = activediagram.AttachLinkObject(Reference) 
      end if 
   next 
End Sub 