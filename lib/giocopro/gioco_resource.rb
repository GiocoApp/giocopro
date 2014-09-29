module GiocoResource
  def gioco_data
    gioco_object.get_resource(self.id)
  end

  def track_event(name)
    gioco_object.track_event(name, self.id)
  end

  def ranking(size=100, batch=1)
    gioco_object.ranking(size, batch)
  end

  def gioco_object
    Giocopro::Giocopro.new
  end
end