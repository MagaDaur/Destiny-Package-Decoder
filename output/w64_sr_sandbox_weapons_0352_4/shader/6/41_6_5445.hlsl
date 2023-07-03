// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[150];
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
    r1.xyzw = t0.Load(r0.y).wxyz;
    r2.xyzw = (int4)r0.yyyy + int4(2,1,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r0.yzw = t0.Load(r2.y).xyz;
    r4.xyzw = t0.Load(r2.z).xyzw;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r5.x = cb10[1].x + 0.25;
    r5.y = cmp(cb0[23].x < cb0[24].x);
    r5.y = r5.y ? cb0[23].x : 0;
    r5.xy = (int2)r5.xy;
    r5.x = (int)r5.y + (int)r5.x;
    r5.y = cb0[22].x / r4.x;
    r6.xyzw = saturate(r2.wwzz);
    r7.xyzw = r6.xyzw * float4(0.638037026,2.59459496,1.61971796,0.658914983) + float4(0,-1.59459496,0,0.341084987);
    r6.xyz = cmp(r6.yyy >= float3(0,0.814999998,1));
    r8.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r8.xyw + r8.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.zw = r6.xy * r7.xy;
    r5.zw = float2(2,2) * r5.zw;
    r5.z = r5.z + r5.w;
    r5.z = r6.z * 2 + r5.z;
    r5.z = saturate(r8.w * 1 + r5.z);
    r5.z = r5.z * 0.699999988 + 0.100000001;
    r1.x = saturate(r1.x);
    r1.x = 1 + -r1.x;
    r1.x = r1.x * 3 + 3;
    r6.xyz = cmp(r6.www >= float3(0,0.354999989,1));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r6.xy = r6.xy * r7.zw;
    r6.xy = float2(2,2) * r6.xy;
    r5.w = r6.x + r6.y;
    r5.w = r6.z * 2 + r5.w;
    r5.w = r6.w * 1 + r5.w;
    r5.w = min(1, r5.w);
    r5.w = r5.w * 3 + 1;
    r3.x = r5.y + r3.x;
    r6.w = r3.x * r4.x;
    r7.xyz = r0.yzw * float3(0.166666672,0.166666672,0.166666672) + float3(0.5,0.5,0.5);
    r7.xyz = t1.SampleLevel(s1_s, r7.xyz, 0).xyz;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = r7.xyz * r1.xxx;
    r1.xyz = r7.xyz * cb0[22].xxx + r1.yzw;
    r7.xy = cb0[138].yx + -r0.zy;
    r7.xy = cb0[138].wz * r7.xy;
    r8.xyzw = t2.SampleLevel(s2_s, r7.xy, 0).xyzw;
    r7.xyz = t3.SampleLevel(s2_s, r7.xy, 0).xzw;
    r1.w = max(9.99999997e-007, r7.z);
    r8.xyzw = r8.xyzw / r1.wwww;
    r1.w = r7.y / r1.w;
    r7.yzw = r8.xyz + -r0.yzw;
    r5.y = dot(r7.yzw, r7.yzw);
    r5.y = sqrt(r5.y);
    r5.y = max(9.99999997e-007, r5.y);
    r8.x = max(9.99999997e-007, r8.w);
    r8.x = r5.y / r8.x;
    r8.x = min(1, r8.x);
    r8.x = 1 + -r8.x;
    r1.w = max(9.99999997e-007, r1.w);
    r8.x = log2(r8.x);
    r1.w = r8.x * r1.w;
    r1.w = exp2(r1.w);
    r1.w = r7.x * r1.w;
    r7.xyz = r7.yzw / r5.yyy;
    r7.xyz = r7.xyz * r1.www;
    r7.xyz = cb0[22].xxx * r7.xyz;
    r1.xyz = r7.xyz * float3(0.100000001,0.100000001,0.100000001) + r1.xyz;
    r7.xyz = cb0[148].xyz * r5.zzz;
    r1.xyz = r7.xyz * cb0[147].xxx + r1.xyz;
    r1.w = saturate(cb0[149].x * r5.w);
    r1.w = 1 + -r1.w;
    r6.xyz = r1.xyz * r1.www;
    r1.xyz = r6.xyz * cb0[136].xxx + r0.yzw;
    r0.y = saturate(cb0[149].x * 0.5);
    r0.y = 1 + -r0.y;
    r3.y = r3.y * r0.y;
    r0.y = cb0[149].x * r3.y;
    r3.z = r0.y * 6.28318548 + r3.z;
    r0.yzw = -cb9[r5.x+32].yzx * r1.zxy;
    r7.xyz = r1.yzx * -cb9[r5.x+32].zxy + -r0.yzw;
    r0.y = dot(r1.xyz, -cb9[r5.x+32].xyz);
    r7.w = -r0.y;
    r8.xyz = cb9[r5.x+32].www * r1.xyz;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r0.yzw = cb9[r5.x+32].zxy * r7.yzx;
    r0.yzw = cb9[r5.x+32].yzx * r7.zxy + -r0.yzw;
    r0.yzw = cb9[r5.x+32].www * r7.xyz + r0.yzw;
    r0.yzw = r7.www * cb9[r5.x+32].xyz + r0.yzw;
    r0.yzw = cb9[r5.x+0].xyz + r0.yzw;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r1.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r2.xyzw
  }
  return;
}