(() => {
  // app/javascript/application.js.txt
  var application_js_default = 'function update_subscategories_div(parent_id) {\n  jQuery.ajax({\n    url: "/get_subscategories",\n    type: "GET",\n    data: {"parent_id" : parent_id},\n    dataType: "html"\n    success: function(data) {\n      jQuery("#versionsDiv").html(data);\n    }\n  });\n}\nfunction update_substags_div(parent_id) {\n  jQuery.ajax({\n    url: "/get_substags",\n    type: "GET",\n    data: {"parent_id" : parent_id},\n    dataType: "html"\n    success: function(data) {\n      jQuery("#versionsDiv").html(data);\n    }\n  });\n}\n\nconst buttonGroupElement = document\n  .querySelector("trix-editor")\n  .toolbarElement.querySelector("[data-trix-button-group=file-tools]");\nbuttonGroupElement.insertAdjacentHTML("beforeend", buttonHTML);\n';
})();
//# sourceMappingURL=/assets/application.js.js.map
