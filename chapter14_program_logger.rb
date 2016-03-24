$block_depth = 0

def log block_description, &block
  indent = " " * $block_depth 
  
  puts indent + "Starting #{block_description}..."
    $block_depth = $block_depth + 1

  result = block.call
    $block_depth = $block_depth - 1

  puts indent + "Finishing #{block_description}...result is...#{result}"
    
end


log "the first block of code" do
  log "extra block of code" do
    log "super-block" do
      "#{Time.new.hour}"
    end

  "hello, I am an extra-block!"

  log "one more block, just in case..." do
      "Aleksandr".length.to_s + " hours a day practice code, you must my young padawan"
    end
  end
  "I live in London"

end

    
  