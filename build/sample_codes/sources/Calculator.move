module 0x42::Calculator{
    use std::debug;

    struct Calculator has drop{
        result: u64
    }

    fun add_numbers(calculator: &mut Calculator, first_num: u64, second_num: u64) {
        let sum: u64 = first_num + second_num;
        calculator.result = sum;

        debug::print(&sum);
    }

    fun multiply_numbers(calculator: &mut Calculator, first_product: u64, second_product: u64) {
        let product: u64 = first_product * second_product;
        calculator.result = product;
        debug::print(&product);
    }

    #[test]

    fun test_add_numbers() {
        let calculator = Calculator {
            result: 0u64,
        };
        add_numbers(&mut calculator, 9, 5);
        assert!(calculator.result == 14, 1);
    }

    
    #[test]

    fun test_multiply_numbers() {
        let calculator = Calculator {
            result: 0u64,
        };
        multiply_numbers(&mut calculator, 9, 5);
        assert!(calculator.result == 45, 1);
    }
}