function display_search()
{
  $('#searchform').toggle();
}

function edit_modal(record_id)
{
  console.log("Collect Information");
  var name = $('#name_'+record_id).val();
  var type = $('#type_'+record_id).val();
  var content = $('#content_'+record_id).val();
  var prio = $('#prio_'+record_id).val();
  var ttl = $('#ttl_'+record_id).val();
  var domain = $('#domain_'+record_id).val();
  console.log("Information collected. Name: "+name+", Type: "+type+", Content: "+content+", TTL: "+ttl+", Prio: "+prio);
  console.log("Write information into modal.")
  $('#edit_modal_record_id').val(record_id);
  var rec_name=name.replace(domain,"");
  $('#edit_modal_name').val(rec_name.replace(".",""));
  $('#edit_modal_content').val(content);
  console.log("Display Modal.")
  $('#edit_modal').modal('toggle');
}

function ttl_modal(record_id)
{
  console.log("Collect Information");
  var name = $('#name_'+record_id).val();
  var type = $('#type_'+record_id).val();
  var content = $('#content_'+record_id).val();
  var prio = $('#prio_'+record_id).val();
  var ttl = $('#ttl_'+record_id).val();
  console.log("Information collected. Name: "+name+", Type: "+type+", Content: "+content+", TTL: "+ttl+", Prio: "+prio);
  console.log("Write information into modal.")
  $('#ttl_modal_record_id').val(record_id);
  $('#ttl_modal_ttl').val(ttl);
  $('#ttl_modal_prio').val(prio);
  console.log("Display Modal.")
  $('#ttl_modal').modal('toggle');
}

$('.alert').click(function(){
  $('.alert').toggle();
});

$('#type').change(function(){
  var value = $('#type').val();
  console.log(value);
  switch (value) {
    case "SPF":
      $('#spf_modal').modal('toggle');
    break;
    case "CAA":
      $('#caa_modal').modal('toggle');
    break;
    case "SRV":
      $('#srv_modal').modal('toggle');
    break;
    case "SSHFP":
      $('#sshfp_modal').modal('toggle');
    break;
    case "DKIM":
      $('#dkim_modal').modal('toggle');
    break;
    case "AFSDB":
      $('#afsdb_modal').modal('toggle');
    break;
    case "DNSKEY":
      $('#dnskey_modal').modal('toggle');
    break;
    case "SMIMEA":
      $('#smimea_modal').modal('toggle');
    break;
    default:
  }
});

$('#spf_save').click(function(){
  var allow_a = $('#spf_a_record').prop('checked');
  var allow_mx = $('#spf_mx_record').prop('checked');
  var allow_ptr = $('#spf_ptr_record').prop('checked');
  var allow_ip4 = $('#spf_ip4').val();
  var allow_ip6 = $('#spf_ip6').val();
  var allow_a_records = $('#spf_a').val();
  var allow_mx_records = $('#spf_mx').val();
  var allow_includes = $('#spf_include').val();
  var handling = $('#spf_blocked').val();
  var content = "v=spf1";
  if(allow_a)
  {
    content+=" a";
  }
  if(allow_mx)
  {
    content+=" mx";
  }
  if(spf_ptr_record)
  {
    content+=" ptr";
  }
  if(allow_ip4!="")
  {
    var ip4=allow_ip4.split(",");
    for (var i = 0; i < ip4.length; i++) {
      content+=" ip4:"+ip4[i];
    }
  }
  if(allow_ip6!="")
  {
    var ip6=allow_ip6.split(",");
    for (var i = 0; i < ip6.length; i++) {
      content+=" ip6:"+ip6[i];
    }
  }
  if(allow_a_records!="")
  {
    var a=allow_a_records.split(",");
    for (var i = 0; i < a.length; i++) {
      content+=" a:"+a[i];
    }
  }
  if(allow_mx_records!="")
  {
    var mx=allow_mx_records.split(",");
    for (var i = 0; i < mx.length; i++) {
      content+=" mx:"+mx[i];
    }
  }
  if(allow_includes!="")
  {
    var includes=allow_includes.split(",");
    for (var i = 0; i < includes.length; i++) {
      content+=" include:"+includes[i];
    }
  }
  switch (handling) {
    case "fail":
      content+=" -all"
    break;
    case "softfail":
      content+=" ~all"
    break;
    case "neutral":
      content+=" ?all"
    break;
    default:
  }
  $('#content').val(content);
  $('#spf_modal').modal('toggle');
  $('#create_form').submit();
});

$('#caa_save').click(function(){
  var caa_wildcard=$('#caa_wildcard').prop('checked');
  var caa_issuer=$('#caa_issuer').val();
  var content="0";
  if(caa_wildcard)
  {
    content+=" issuewild";
  }
  else {
    content+=" issue";
  }
  content+=" \""+caa_issuer+"\"";
  $('#content').val(content);
  $('#caa_modal').modal('toggle');
  $('#create_form').submit();
});

$('#srv_save').click(function(){
  var srv_service=$('#srv_service').val();
  var srv_protocol=$('#srv_protocol').val();
  var srv_weight=$('#srv_weight').val();
  var srv_port=$('#srv_port').val();
  var srv_target=$('#srv_target').val();
  var service="_"+srv_service+"."+srv_protocol;
  $('#name').val(service);
  var content=srv_weight+" "+srv_port+" "+srv_target;
  $('#content').val(content);
  $('#srv_modal').modal('toggle');
  $('#create_form').submit();
});

$('#sshfp_save').click(function(){
  var sshfp_algo=$('#sshfp_algo').val();
  var sshfp_type=$('#sshfp_type').val();
  var sshfp_fingerprint=$('#sshfp_fingerprint').val();
  var content=sshfp_algo+" "+sshfp_type+" "+sshfp_fingerprint;
  $('#content').val(content);
  $('#sshfp_modal').modal('toggle');
  $('#create_form').submit();
});

$('#dkim_save').click(function(){
  var dkim_selector=$('#dkim_selector').val();
  var dkim_key=$('#dkim_key').val();
  var name=dkim_selector+"._domainkey";
  $('#name').val(name);
  var content="v=DKIM1; p="+dkim_key;
  $('#content').val(content);
  $('#dkim_modal').modal('toggle');
  $('#create_form').submit();
});

$('#afsdb_save').click(function(){
  var afsdb_type=$('#afsdb_type').val();
  var afsdb_hostname=$('#afsdb_hostname').val();
  var content=afsdb_type+" "+afsdb_hostname;
  $('#content').val(content);
  $('#afsdb_modal').modal('toggle');
  $('#create_form').submit();
});

$('#dnskey_save').click(function(){
  var dnskey_flags=$('#dnskey_flags').val();
  var dnskey_protocol=$('#dnskey_protocol').val();
  var dnskey_algo=$('#dnskey_algo').val();
  var dnskey_key=$('#dnskey_key').val();
  var content="("+dnskey_flags+"; "+dnskey_protocol+"; "+dnskey_algo+"; "+dnskey_key+")";
  $('#content').val(content);
  $('#dnskey_modal').modal('toggle');
  $('#create_form').submit();
});

$('#smimea_save').click(function(){
  var smimea_mail=$('#smimea_mail').val();
  var smimea_cert=$('#smimea_cert').val();
  var name=sha256(smimea_mail.split("@")[0])+"._smimecert";
  $('#name').val(name);
  var content="0 0 1 "+smimea_cert;
  $('#content').val(content);
  $('#smimea_modal').modal('toggle');
  $('#create_form').submit();
});

$('#name').change(function() {
  if($('#name').val()=="")
  {
    $('#dot').html("");
  }
  else {
    $('#dot').html(".");
  }
});

$(function () {
  $('[data-toggle="tooltip"]').tooltip();
})
