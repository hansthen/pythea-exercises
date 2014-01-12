define(["jquery","underscore","backbone","pages/spark/app","pages/spark/views/template/sidebar.html"],function($,_,Backbone,Coursera,template){var sidebar=Backbone.View.extend({name:"sidebar",className:"coursera-sidebar",attributes:{role:"menubar"},initialize:function(){},render:function(){return this.$el.html(template({course:Coursera.course,user:Coursera.user,navbar:Coursera.navbar,config:Coursera.config})),this.updateSidebar(),this},updateSidebar:function(){function markLink(query){if(!foundActiveLink){var matches=[];if($navbar.find(query).each(function(){matches.push($(this).parent()),foundActiveLink=!0}),1==matches.length)if(foundActiveLink=!0,-1==window.location.href.indexOf("/search?q"))matches[0].addClass("active"),matches[0].find("a").append('<span class="course-navbar-selected-marker">(selected)</span>')}}this.$el.find(".course-navbar-container li").removeClass("active"),this.$el.find(".course-navbar-container li").remove(".course-navbar-selected-marker");var $navbar=this.$el.find(".course-navbar-container li"),foundActiveLink=!1;markLink('a[href="'+window.location.href+'"]'),markLink('a[href="'+window.location.pathname+'"]'),markLink('a[href="'+window.location.href+'/index"]'),markLink('a[href="'+window.location.pathname+'/index"]');var queryLess=window.location.href.split("?")[0];markLink('a[href^="'+queryLess+'"]')}});return sidebar});