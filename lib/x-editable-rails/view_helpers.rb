module X
  module Editable
    module Rails
      module ViewHelpers
        def editable model, object, method, options = {}
          if can? :edit, model and xeditable?
            model_param = model.to_s.downcase.gsub('::', '_')
            model_name = model.to_s.downcase.gsub('::', '/')
            data_url = options[:nested_model] ? polymorphic_path([options[:nested_model], object]) : polymorphic_path(object)
            content_tag(
                :a,
                object.send(method),
                :href => "#",
                :class => "editable",
                :data => {
                    :type => (options[:type] ? options[:type] : 'text'), #text|textarea|select|date|checklist|wysihtml5|password|email|url|tel|number|range|checklist|typeahead|select2
                    :model => model_param,
                    :name => method,
                    :url => data_url,
                    :placeholder => 'Empty',
                    :mode => 'inline', # popup|inline
                    :placement => 'top', # top|right|bottom|left
                    :highlight => '#FFFF80',
                    :onblur => 'cancel', # cancel|submit|ignore
                    :send => 'always', # auto|always|never
                    :toggle => 'click', #click|dblclick|mouseenter|manual
                    #:nested => (options[:nested] if options[:nested]),
                    #:nid => (options[:nid] if options[:nid]),
                    :pk => (options[:pk] ? options[:pk] : object.id),
                    :anim => '100',
                    ajaxOptions: {
                        type: 'put',
                        dataType: 'json'
                    },
                    'original-title' => method.humanize
                }
            )
          else
            options[:e]
          end
        end
      end
    end
  end
end
