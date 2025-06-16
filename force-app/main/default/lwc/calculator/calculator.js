import { LightningElement } from 'lwc';

export default class CalculatorApp extends LightningElement {
    number1;
    number2;
    result;

    handleNumber1(event) {
        this.number1 = parseFloat(event.target.value);
    }

    handleNumber2(event) {
        this.number2 = parseFloat(event.target.value);
    }

    handleAdd() {
        this.result = this.number1 + this.number2;
    }

    handleSubtract() {
        this.result = this.number1 - this.number2;
    }

    handleMultiply() {
        this.result = this.number1 * this.number2;
    }

    handleDivide() {
        if (this.number2 === 0) {
            this.result = 'Cannot divide by zero';
        } else {
            this.result = this.number1 / this.number2;
        }
    }
}