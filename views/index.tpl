<div>
    <h1>Námskeið</h1>
</div>
<div>
   <form action="/process" method="post">
         <fieldset>
         <h3>Notendaupplýsingar</h3>
         <div>
            <label>Nafn:</label>
            <input type = "text" name = "nafn" required="required">
         </div>
         <div>
            <label>Heimilisfang:</label>
            <input type = "text" name = "heimilisfang" required="required">
         </div>
         <div>
            <label>Netfang:</label>
            <input type = "email" name = "netfang" required="required">
         </div>
         <div>
            <label>Símanúmer:</label>
            <input type = "text" name = "simi" pattern="^(\+354 )?\d{3}[ -]?\d{4}$">
         </div>
         </fieldset>
         <fieldset>
            <h3>ÁFRAM</h3>
         <input type = "submit" name = "submit" value = "Staðfesta" />
      </fieldset>
	</form>
</div>