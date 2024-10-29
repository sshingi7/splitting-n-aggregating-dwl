%dw 2.0
output application/json

fun getSumOf(data, name) = 
    sum((data filter (item) -> item.transaction == name) map ((item) -> item.amount))
---
{
    credit: getSumOf(payload, "credit"),
    debit: getSumOf(payload, "debit"),
}