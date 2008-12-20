require 'standard_tags'

module StandardTags

    desc %{
      renders the content of a file to the page
      
      *Usage:*
       <pre><code><r:include virtual="/xyz.html" /></code></pre>
    }
    tag 'include' do |tag|
      options = tag.attr.dup
      v = options['virtual']
      IO.read(File.join(RAILS_ROOT, 'public', v))
    end

end

