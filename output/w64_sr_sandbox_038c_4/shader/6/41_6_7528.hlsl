// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:55 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[157];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.x = t0.Load(r2.w).x;
    r0.y = cb0[22].x / r4.z;
    r0.z = 0.200000003 * r4.y;
    r6.x = cb13[0].x * 0.5 + r0.z;
    r0.z = saturate(r1.w);
    r7.xyzw = r0.zzzz * float4(9.23928833,0.309560001,7.81818199,0.955359995) + float4(-20.306488,-0.934668005,0,0.669746995);
    r0.w = r0.z * r0.z;
    r7.xy = r7.xy * r0.ww + r7.zw;
    r8.xyz = cmp(r0.zzz >= float3(0,0.206667006,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r0.zw = r8.xy * r7.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r8.z * 2 + r0.z;
    r0.z = saturate(r8.w * 1 + r0.z);
    r7.w = r1.w + r0.y;
    r6.yz = float2(0,0);
    r6.xyz = -r6.xyz + r3.xyz;
    r6.xyz = r6.xyz * float3(0.416666657,0.416666657,0.416666657) + float3(0.5,0.5,0.5);
    r6.xyz = t1.SampleLevel(s1_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.yzw = r6.xyz * r0.zzz;
    r0.yzw = cb0[22].xxx * r0.yzw;
    r0.yzw = r0.yzw * float3(2,2,2) + r1.xyz;
    r1.x = saturate(cb0[156].x * 3);
    r1.x = 1 + -r1.x;
    r7.xyz = r1.xxx * r0.yzw;
    r3.xyz = r7.xyz * cb0[148].xxx + r3.xyz;
    r0.y = cb0[156].x * r3.w;
    r4.x = r0.y * 6.28318548 + r4.x;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}