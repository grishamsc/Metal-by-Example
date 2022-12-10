//
//  Shaders.metal
//  DrawingIn2D
//
//  Created by Grigory Serebryaniy on 09.12.2022.
//

#include <metal_stdlib>
using namespace metal;

struct Vertex
{
    simd::float4 position [[position]];
    simd::float4 color;
};

vertex Vertex vertex_main(const device Vertex *vertices [[buffer(0)]],
                          uint vid [[vertex_id]])
{
    return vertices[vid];
}

fragment simd::float4 fragment_main(Vertex inVertex [[stage_in]])
{
    return inVertex.color;
}
