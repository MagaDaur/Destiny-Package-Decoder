// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
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
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).wxyz;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.yz = t0.Load(r2.w).xy;
    r0.y = saturate(r4.x);
    r0.y = r0.y * 0.0249999985 + 0.075000003;
    r0.z = saturate(r1.w);
    r6.xyzw = r0.zzzz * float4(2.5,3.33333397,6.66666698,-9.99999809) + float4(0,-2.33333397,0,9.99999809);
    r7.xyzw = cmp(r0.zzzz >= float4(0,0.200000003,0.850000024,1));
    r7.xyzw = r7.xyzw ? float4(1,1,1,1) : 0;
    r7.xyz = r7.xyz + r7.yzw;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r7.xz = r7.xz * r6.xy;
    r6.xy = float2(2,1) * r7.xy;
    r0.w = r6.x + r6.y;
    r0.w = r7.z * 2 + r0.w;
    r0.w = saturate(r7.w * 1 + r0.w);
    r7.y = dot(r0.yy, r0.ww);
    r8.xyzw = cmp(r0.zzzz >= float4(0,0.150000006,0.899999976,1));
    r8.xyzw = r8.xyzw ? float4(1,1,1,1) : 0;
    r0.yzw = r8.xyz + r8.yzw;
    r0.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r0.yzw;
    r0.yzw = float3(0.5,0.5,0.5) * r0.yzw;
    r0.yzw = frac(r0.yzw);
    r0.yw = r0.yw * r6.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r0.w * 2 + r0.y;
    r7.z = min(1, r0.y);
    r0.y = saturate(r5.x);
    r0.yzw = float3(-0,-0.333332986,-0.666666985) + r0.yyy;
    r0.yzw = saturate(float3(3.0000031,2.99999404,3.00000286) * r0.yzw);
    r6.xyz = float3(0.132473007,0.170422003,-0.0940539986) * r0.yzw;
    r8.xyz = float3(0.0557079986,-0.402058989,0.000423999998) * r0.yzw;
    r0.yz = float2(-0.481723994,-0.00487900013) * r0.zw;
    r6.x = dot(float3(1,1,1), r6.xyz);
    r6.y = dot(float3(1,1,1), r8.xyz);
    r6.z = dot(float2(1,1), r0.yz);
    r6.xyz = float3(0.0295570008,0.351532996,0.496933013) + r6.xyz;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r6.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.xw = r4.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r4.yzw = r5.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
    r0.y = (int)r0.x + 5;
    r2.x = r5.w;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  }
  return;
}