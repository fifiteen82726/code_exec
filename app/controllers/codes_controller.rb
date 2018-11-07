class CodesController < ApplicationController
  def create
    file_name = "#{Time.now.to_i.to_s}.rb"

    File.open(file_name, 'w') do |file|
      file.write(params['content'])
    end

    result = `ruby #{file_name}`

    ok(result)
  end
end
