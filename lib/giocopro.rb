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

  def add_badge(name, aid, badge_url = false)
    data                              = {'badge' => {'name' => name}}
    data['badge']['remote_image_url'] = badge_url if badge_url
    post_data('add_badge.json', aid, data)
  end

  def remove_badge(bid, aid)
    data = {'badge' => {'id' => bid}}
    delete_data('remove_badge.json', aid, data)
  end

  def add_points(points, aid)
    data = {'points' => {'points' => points}}
    post_data('add_points.json', aid, data)
  end

  def remove_points(points, aid)
    data = {'points' => {'points' => points}}
    delete_data('remove_points.json', aid, data)
  end

  def add_level(levels, aid)
    data = {'levels' => {'levels' => levels}}
    post_data('add_level.json', aid, data)
  end

  def remove_level(levels, aid)
    data = {'levels' => {'levels' => levels}}
    delete_data('remove_level.json', aid, data)
  end

  private

  def resource_data(data, aid)
    data         ||= {}
    data['resource'] = {'aid' => aid}
    data
  end

  def get_data(url, aid, data = nil)
    req = Net::HTTP::Get.new(('/api/' + url), @headers)
    request!(data, aid, req)
  end

  def post_data(url, aid, data = nil)
    req = Net::HTTP::Post.new(('/api/' + url), @headers)
    request!(data, aid, req)
  end

  def delete_data(url, aid, data = nil)
    req = Net::HTTP::Delete.new(('/api/' + url), @headers)
    request!(data, aid, req)
  end

  def request!(data, aid, req)
    req.body = resource_data(data, aid).to_json
    res      = @http.request(req)
    JSON.parse(res.body)
  end
end