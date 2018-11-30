live_loop :flibble do
  sample :bd_haus, rate: 1
  sleep 0.5sample :ambi_choir, rate: 0.3
sample :bd_haus, rate: 0.6
sleep 0.7
end
live_loop :guit do
  with_fx :echo, mix: 0.5, phase: 0.2 do
    sample :guit_em9, rate: 1
  end
  sample :guit_em9, rate: 1
  sleep 8
end
live_loop :boom do
  with_fx :reverb, room: 0.4 do
    sample :bd_boom, amp: 5, rate: 0.5
    sleep 4
  end
