
nextflow.enable.dsl=2
include {built2Fail } from './modules/built2Fail'

workflow {
Channel.from("DUP", "BND", "DEL", "INS", "INV").set{x}
built2Fail(x)
}

