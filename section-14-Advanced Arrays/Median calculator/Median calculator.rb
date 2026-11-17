def median(*num)
    sorted=num.sort
    mid=sorted.length/2
    if sorted.length.odd?
        mid.to_f
    else
       (( mid-1)+mid)/2
    end
end
p median(1,2,3,4)
p median(2,3,4)
