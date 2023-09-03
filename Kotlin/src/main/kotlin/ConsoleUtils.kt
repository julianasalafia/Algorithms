class ConsoleUtils {
    fun readInt(prompt: String) : Int {
        var value: Int?

        do {
            print(prompt)
            val input = readLine()
            value = input?.toIntOrNull()

            if ((value == null) || (value < 0)) {
                println("Error. Please, type a valid number.")
            }
        } while ((value == null) || (value < 0))
        return value
    }

    fun readDouble(prompt: String) : Double {
        var value: Double?

        do {
            print(prompt)
            val input = readLine()
            value = input?.toDoubleOrNull()

            if ((value == null) || (value < 0)) {
                println("Error. Please, type a valid number.")
            }
        } while ((value == null) || (value < 0))
        return value
    }

    fun readString(prompt: String) : String {
        var value : String?

        do {
            print(prompt)
            val input = readLine()
            value = input

            if (value == null || !value.contains(Regex("^[a-zA-Z\\s]+$"))) {
                print("Error. Please, enter a valid string.")
            }

        } while (value == null || !value.contains(Regex("^[a-zA-Z\\s]+$")))
        return value
    }
}
