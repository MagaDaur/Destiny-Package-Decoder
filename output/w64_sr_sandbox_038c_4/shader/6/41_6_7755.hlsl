// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[154];
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r0.z = t0.Load(r0.y).w;
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r1.xy = t0.Load(r1.w).xy;
    r0.y = cb0[22].x / r3.z;
    r0.w = saturate(r0.z);
    r5.xyzw = r0.wwww * float4(9.23928833,0.309560001,7.81818199,0.955359995) + float4(-20.306488,-0.934668005,0,0.669746995);
    r6.x = r0.w * r0.w;
    r5.xy = r5.xy * r6.xx + r5.zw;
    r6.yzw = cmp(r0.www >= float3(0,0.206667006,1));
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
    r5.x = 10 * r5.x;
    r7.xyzw = r0.wwww * float4(-7.50619507,-0.426297009,-9.83333302,-1.00801098) + float4(29.4110336,1.16508996,1,0.280945003);
    r5.yz = r7.xy * r6.xx + r7.zw;
    r6.xyz = cmp(r0.www >= float3(0,0.166666999,0.706667006));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r5.yz = r6.xy * r5.yz;
    r5.yz = r5.yz + r5.yz;
    r0.w = saturate(r5.y + r5.z);
    r0.w = 0.5 * r0.w;
    r5.y = saturate(r4.y);
    r6.xyzw = r5.yyyy * float4(4.18333292,-1.97318494,5,1.72257197) + float4(-8.09254742,-0.179287001,0,0.429903001);
    r5.z = r5.y * r5.y;
    r5.zw = r6.xy * r5.zz + r6.zw;
    r6.xyz = cmp(r5.yyy >= float3(0,0.506667018,1));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r5.zw = r6.xy * r5.zw;
    r5.zw = r5.zw + r5.zw;
    r6.y = saturate(r5.z + r5.w);
    r6.x = -1;
    r5.yz = r5.yy * float2(2,0) + r6.xy;
    r6.w = r0.z + r0.y;
    r7.xyz = cb0[27].xyz * r5.zzz;
    r5.yzw = cb0[26].xyz * r5.yyy + r7.xyz;
    r0.y = dot(r5.yzw, r5.yzw);
    r0.y = rsqrt(r0.y);
    r5.yzw = r5.yzw * r0.yyy;
    r7.xyz = -cb0[2].xyz + r2.xyz;
    r7.xyz = r7.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    r7.xyz = t1.SampleLevel(s1_s, r7.xyz, 0).xyz;
    r7.xyz = r7.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.xyz = r7.xyz * r5.xxx;
    r7.xyz = cb0[22].xxx * r7.xyz;
    r7.xyz = r7.xyz + r7.xyz;
    r0.yzw = r5.yzw * r0.www + r7.xyz;
    r5.xyz = cb0[152].xyz * cb0[151].xxx;
    r0.yzw = r5.xyz * float3(-0.5,-0.5,-0.5) + r0.yzw;
    r5.x = saturate(cb0[153].x * 0.5);
    r5.x = 1 + -r5.x;
    r6.xyz = r5.xxx * r0.yzw;
    r2.xyz = r6.xyz * cb0[140].xxx + r2.xyz;
    r0.y = cb0[153].x * r2.w;
    r3.x = r0.y * 6.28318548 + r3.x;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r4.xyzw
    r1.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r1.xyzw
  }
  return;
}