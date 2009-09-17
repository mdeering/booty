class Booty
    def self.call(input)
    # Entire words only
    map = {
      'is' => 'be', 'big' => 'vast',
      'friend' => 'matey', 'my' => 'me',
      'say' => 'cry', 'small' => 'puny',
      'cheat' => 'hornswaggle', 'everyone' => 'all hands',
      'isn\'t' => 'be not', 'the' => 'tha',
      'are' => 'be', 'to' => 't\'',
      'of' => 'o\'', 'am' => 'be',
      'you' => 'ya', 'yes' => 'aye',
      'kill' => 'keelhaul', 'you' => 'ye',
      'no' => 'nay', 'never' => 'nary',
      'i\'m' => 'i be', 'you\'re' => 'you be',
      'girl' => 'lass', 'woman' => 'wench',
      'hello' => 'ahoy', 'beer' => 'grog',
      'quickly' => 'smartly', 'do' => 'd\'',
      'your' => 'yer', 'for' => 'fer',
      'go' => 'sail', 'we' => 'our jolly crew',
      'and' => 'n\'', 'good' => 'jolly good',
      'yeah' => 'aye', 'that\'s' => 'that be',
      'over' => 'o\'er', 'yah' => 'aye',
      'hand' => 'hook', 'leg' => 'peg',
      'eye' => 'eye-patch', 'flag' => 'jolly roger',
      'dick' => 'plank', 'penis' => 'plank',
      'fuck' => 'curse', 'shit' => 'shite',
      'treasure' => 'booty', 'butt' => 'booty',
      'really' => 'verily', 'leg' => 'peg',
      'them' => '\'em', 'house' => 'shanty',
      'home' => 'shanty', 'quickly' => 'smartly',
      'posted' => 'tacked to the yardarm',
      'address' => 'port o\' call', 'work' => 'brig',
      'invalid' => 'sunk', 'sorry' => 'yarr',
      'hey' => 'ahoy', 'boss' => 'admiral',
      'manager' => 'admiral', 'captain' => 'Cap\'n',
      'friends' => 'shipmates', 'people' => 'scallywags',
      'earlier' => 'afore', 'women' => 'wenches',
      'wife' => 'lady', 'girls' => 'lassies',
      'interstate'=> 'high seas', 'highway' => 'ocean',
      'car' => 'boat', 'truck' => 'schooner',
      'suv' => 'ship', 'airplane' => 'flying machine',
      'machine' => 'contraption', 'driving' => 'sailing',
    }

    # Pirate filler
    fill = [
      'avast', 'splice the mainbrace',
      'shiver me timbers', 'ahoy',
      'arrrrr', 'arrgh',
      'yo ho ho', 'yarrr',
      'eh', 'arrrghhh',
      'where\'s me rum?', 'walk tha plank',
      'arrr', 'ahoy matey',
      'surrender yer booty', 'prepare to be boarded',
      'hoist the mizzen', 'blow me down',
      'swap the poop deck', 'ye landlubber',
      'bring \'er alongside', 'hang \'im from the yardarm',
      'blow the man down', 'let go and haul',
      'heave to', 'take no prisoners',
      'belay that', 'me bucko',
      'lock \'im in irons', 'and a bottle \'o rum',
      'and donae spare the whip', 'pass the grog',
      'and swab the deck', 'fire the cannon',
      'sleep with t\' fishes',
    ]

    # Punctuation
    punct = ['!', '.', '!!']

      words = Array.new()
      input = input.split(/ /)
      input.each do|a|
        #print "word: #{a}\n"
        words.push(a)
      end

      words.each_index {|w|
        if map.has_key?(words[w])
          #print "Word: #{words[w]} Match: #{map[words[w]]}\n"
          words[w] = map[words[w]]
        end
      }

      sentence = words.join(" ")
      #print "Sentence: #{sentence}\n"

      if rand(5) + 1 == 1
        sentence = fill[rand(fill.length)] << punct[rand(punct.length)] << " #{sentence}"
      elsif rand(5) + 1 == 1
        sentence = "#{sentence} " << fill[rand(fill.length)] << punct[rand(punct.length)]
      end

      #print "#{sentence}\n"
      return sentence
    end
  end