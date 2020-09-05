body =
  "大型で非常に強い台風10号は5日午後、沖縄・大東島地方を暴風域に入れ、北上した。勢力を維持して6日午後に鹿児島・奄美に最接近し、6日午後から7日、九州にかなり接近するか上陸する恐れがある。\n\n" +
  "経験したことのないような暴風や高波、高潮となる恐れがあるとして、気象庁は6日午前、鹿児島県に台風による特別警報を発表する見通し。" +
  "九州各地では厳戒態勢がとられている。"

%w(Taro Jiro Hana).each do |name|
  member = Member.find_by(name: name)
  0.upto(9) do |idx|
    Entry.create(
      author: member,
      title: "野球観戦#{idx}",
      body: body,
      posted_at: 10.days.ago.advance(days: idx),
      status: %w(draft member_only public)[idx % 3]
    )
  end
end