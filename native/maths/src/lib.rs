#[rustler::nif]
fn add(a: i64, b: i64) -> i64 {
    a + b
}

#[rustler::nif]
fn sub(a: i64, b: i64) -> i64 {
    a - b
}

#[rustler::nif]
fn mul(a: i64, b: i64) -> i64 {
    a * b
}

#[rustler::nif]
fn div(a: i64, b: i64) -> i64 {
    a / b
}

rustler::init!("Elixir.Maths.Native", [add, sub, mul, div]);
