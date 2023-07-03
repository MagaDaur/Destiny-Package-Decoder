// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:00 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[149];
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
    r1.xyzw = t0.Load(r1.z).xyzw;
    r0.y = cb0[22].x / r3.z;
    r4.x = saturate(r0.w);
    r5.xyzw = r4.xxxx * float4(9.23928833,0.309560001,7.81818199,0.955359995) + float4(-20.306488,-0.934668005,0,0.669746995);
    r4.y = r4.x * r4.x;
    r4.zw = r5.xy * r4.yy + r5.zw;
    r5.xyz = cmp(r4.xxx >= float3(0,0.206667006,1));
    r5.xyw = r5.xyz ? float3(1,1,1) : 0;
    r5.xyz = r5.xyw + r5.yww;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r4.zw = r5.xy * r4.zw;
    r4.zw = float2(2,2) * r4.zw;
    r4.z = r4.z + r4.w;
    r4.z = r5.z * 2 + r4.z;
    r4.z = saturate(r5.w * 1 + r4.z);
    r5.xyzw = r4.xxxx * float4(-7.50619507,-0.426297009,-9.83333302,-1.00801098) + float4(29.4110336,1.16508996,1,0.280945003);
    r4.yw = r5.xy * r4.yy + r5.zw;
    r5.xyz = cmp(r4.xxx >= float3(0,0.166666999,0.706667006));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r5.xy = r5.xy + r5.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r4.xy = r5.xy * r4.yw;
    r4.xy = r4.xy + r4.xy;
    r4.x = saturate(r4.x + r4.y);
    r4.xz = float2(0.5,10) * r4.xz;
    r4.y = saturate(r1.x);
    r5.xyzw = r4.yyyy * float4(4.18333292,-1.97318494,5,1.72257197) + float4(-8.09254742,-0.179287001,0,0.429903001);
    r4.w = r4.y * r4.y;
    r5.xy = r5.xy * r4.ww + r5.zw;
    r6.xyz = cmp(r4.yyy >= float3(0,0.506667018,1));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r5.zw = r6.xy + r6.yz;
    r5.zw = float2(9.99999997e-007,9.99999997e-007) + r5.zw;
    r5.zw = float2(0.5,0.5) * r5.zw;
    r5.zw = frac(r5.zw);
    r5.xy = r5.zw * r5.xy;
    r5.xy = r5.xy + r5.xy;
    r5.y = saturate(r5.x + r5.y);
    r5.x = -1;
    r4.yw = r4.yy * float2(2,0) + r5.xy;
    r5.w = r0.w + r0.y;
    r6.xyz = cb0[27].xyz * r4.www;
    r6.xyz = cb0[26].xyz * r4.yyy + r6.xyz;
    r0.y = dot(r6.xyz, r6.xyz);
    r0.y = rsqrt(r0.y);
    r6.xyz = r6.xyz * r0.yyy;
    r7.xyz = -cb0[2].xyz + r2.xyz;
    r7.xyz = r7.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    r7.xyz = t1.SampleLevel(s1_s, r7.xyz, 0).xyz;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.yzw = r7.xyz * r4.zzz;
    r4.yzw = cb0[22].xxx * r4.yzw;
    r4.yzw = r4.yzw + r4.yzw;
    r4.xyz = r6.xyz * r4.xxx + r4.yzw;
    r4.xyz = -cb0[147].xyz * cb0[146].xxx + r4.xyz;
    r0.y = saturate(cb0[148].x * 0.5);
    r0.y = 1 + -r0.y;
    r5.xyz = r4.xyz * r0.yyy;
    r2.xyz = r5.xyz * cb0[135].xxx + r2.xyz;
    r0.y = cb0[148].x * r2.w;
    r3.x = r0.y * 6.28318548 + r3.x;
    r0.x = (int)r0.z + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r1.xyzw
  }
  return;
}