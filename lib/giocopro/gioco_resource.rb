module GiocoResource
  def gioco_data
    gioco_object.get_resource(self.id)
  end

  def track_event(name)
    gioco_object.track_event(name, self.id)
  end

  def gioco_object
    GiocoPro::GiocoPro.new
  end
end