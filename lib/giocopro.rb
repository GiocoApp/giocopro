require 'json'
require 'net/http'

class GiocoPro
  def initialize(token=false)
    @http    = Net::HTTP.new('app.gioco.pro')
    @headers = {'Content-Type' =>'application/json', 'Token' =>(token) ? token : ENV['GIOCO_PRO_TOKEN']}
  end

  def get_resource(aid)
    get_data('get_resource.json', aid)
  end

  def track_event(name, aid)
    data = {'event' => {'name' => name}}
    post_data('track_event.json', aid, data)
  end

  private

  def resource_data(data, aid)
    data         ||= {}
    data['resource'] = {'aid' => aid}
    data
  end

  def get_data(url, aid)
    req = Net::HTTP::Get.new(('/api/' + url), @headers)
    request!(nil, aid, req)
  end

  def post_data(url, aid, data)
    req = Net::HTTP::Post.new(('/api/' + url), @headers)
    request!(data, aid, req)
  end

  def request!(data, aid, req)
    req.body = resource_data(data, aid).to_json
    res      = @http.request(req)
    JSON.parse(res.body)
  end
end