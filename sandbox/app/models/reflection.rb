class Reflection
    def house(name: "")
        name == "" ? "house" : format("%s house", name)
    end

    def mouse(sum: 0)
        sum == 0 ? "mouse" : format("%s mouse", sum)
    end

    def nose(name: "")
        name == "" ? "nose" : format("%s nose", name)
    end
end