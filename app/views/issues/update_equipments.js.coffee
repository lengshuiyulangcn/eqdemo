
$("#equipments_select").empty()
  .append("<%= escape_javascript(render(:partial =>'eq', :object=>@equipments)) %>")
