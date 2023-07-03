// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[169];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r0.w = t0.Load(r0.y).w;
    r1.xyz = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r1.xyz = t0.Load(r1.z).xyz;
    r0.y = cb0[22].x / r3.z;
    r4.x = 0.200000003 * r3.y;
    r4.x = cb13[0].x * 0.5 + r4.x;
    r4.w = saturate(r0.w);
    r5.xyzw = r4.wwww * float4(9.23928833,0.309560001,7.81818199,0.955359995) + float4(-20.306488,-0.934668005,0,0.669746995);
    r6.x = r4.w * r4.w;
    r5.xy = r5.xy * r6.xx + r5.zw;
    r6.yzw = cmp(r4.www >= float3(0,0.206667006,1));
    r7.xyw = r6.yzw ? float3(1,1,1) : 0;
    r6.yzw = r7.xyw + r7.yww;
    r6.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.yzw;
    r6.yzw = float3(0.5,0.5,0.5) * r6.yzw;
    r6.yzw = frac(r6.yzw);
    r5.xy = r6.yz * r5.xy;
    r5.xy = float2(2,2) * r5.xy;
    r5.x = r5.x + r5.y;
    r5.x = r6.w * 2 + r5.x;
    r5.x = saturate(r7.w * 1 + r5.x);
    r5.x = 4 * r5.x;
    r5.y = saturate(r1.z);
    r5.y = r5.y * 2 + 2;
    r7.xyzw = r4.wwww * float4(-16.2669067,-0.889518976,-6.5999999,-1.88313198) + float4(17.1567764,2.27529502,1,0.508421004);
    r5.zw = r7.xy * r6.xx + r7.zw;
    r6.xyz = cmp(r4.www >= float3(0,0.280000001,0.706667006));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r5.zw = r6.xy * r5.zw;
    r5.zw = r5.zw + r5.zw;
    r4.w = saturate(r5.z + r5.w);
    r4.w = r5.y * r4.w;
    r6.w = r0.w + r0.y;
    r0.y = dot(cb0[27].xyz, cb0[27].xyz);
    r0.y = rsqrt(r0.y);
    r5.yzw = cb0[27].xyz * r0.yyy;
    r4.yz = float2(0,0);
    r4.xyz = -r4.xyz + r2.xyz;
    r4.xyz = r4.xyz * float3(0.166666672,0.166666672,0.166666672) + float3(0.5,0.5,0.5);
    r4.xyz = t1.SampleLevel(s1_s, r4.xyz, 0).xyz;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.xyz = r4.xyz * r5.xxx;
    r4.xyz = cb0[22].xxx * r4.xyz;
    r4.xyz = r4.xyz + r4.xyz;
    r4.xyz = r5.yzw * r4.www + r4.xyz;
    r5.xyz = cb0[167].xyz * cb0[166].xxx;
    r4.xyz = r5.xyz * float3(0.200000003,0.200000003,0.200000003) + r4.xyz;
    r0.y = saturate(cb0[168].x * 0.5);
    r0.y = 1 + -r0.y;
    r6.xyz = r4.xyz * r0.yyy;
    r2.xyz = r6.xyz * cb0[155].xxx + r2.xyz;
    r0.y = cb0[168].x * r2.w;
    r3.x = r0.y * 6.28318548 + r3.x;
    r0.x = (int)r0.z + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
    r1.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r1.xyzw
  }
  return;
}