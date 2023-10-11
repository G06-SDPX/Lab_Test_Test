from flask import Flask, jsonify

app = Flask(__name__)


def is_prime(n):
    """Check if a number is prime."""
    if n <= 1:
        return 'False'
    if n <= 3:
        return 'True'
    if n % 2 == 0 or n % 3 == 0:
        return 'False'
    i = 5
    while i * i <= n:
        if n % i == 0 or n % (i + 2) == 0:
            return 'False'
        i += 6
    return 'True'


@app.route('/is_prime/<int:number>', methods=['GET'])
def check_prime(number):
    return str(is_prime(number))


if __name__ == '__main__':
    app.run(debug=True)
