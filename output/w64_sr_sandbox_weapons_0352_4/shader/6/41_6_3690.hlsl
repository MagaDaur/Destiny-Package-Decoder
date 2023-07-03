// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:34 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xwyz;
    r0.yzw = t0.Load(r0.w).xyz;
    r4.xyzw = saturate(r0.yzzy);
    r5.x = 0.119999997 * r4.y;
    r5.y = saturate(r3.y);
    r6.z = 0.25 * r5.y;
    r5.y = saturate(r1.w);
    r7.xyzw = r5.yyyy * float4(0.653846025,-1.34615397,0.992663026,-13.2854614) + float4(-0.307691991,1,-0.0832210034,35.5466309);
    r5.z = r5.y * r5.y;
    r5.w = saturate(r7.x * r5.z + r7.y);
    r8.z = r5.w * 0.75 + 0.25;
    r9.xyz = r4.xzw * float3(0.349999994,0.12500003,0.150000006) + float3(0.150000006,0.474999994,0.25);
    r10.xyzw = r5.yyyy * float4(0,-29.0015869,0.25,-0.0276319999) + float4(0,7.74040604,0.25,1.00263202);
    r7.xy = r7.zw * r5.zz + r10.xy;
    r11.xyz = cmp(r5.yyy >= float3(0,0.709999979,1));
    r11.xyw = r11.xyz ? float3(1,1,1) : 0;
    r11.xyz = r11.xyw + r11.yww;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r7.xy = r11.xy * r7.xy;
    r7.xy = float2(2,2) * r7.xy;
    r4.x = r7.x + r7.y;
    r4.x = r11.z * 2 + r4.x;
    r4.x = saturate(r11.w * 1 + r4.x);
    r4.y = -r4.y * 0.119999997 + r9.y;
    r8.w = r4.x * r4.y + r5.x;
    r7.xyz = r4.zzz * float3(0.349999905,0.149999976,0.149999976) + float3(2.1500001,0.75,0.75);
    r11.x = r10.z * r9.z;
    r11.y = r4.z * 2 + 1;
    r4.x = r4.w * r4.w;
    r4.x = r4.x * 175 + 125;
    r4.yz = float2(0.0250000004,1.94915199) * r5.yy;
    r4.y = r10.w * r5.z + r4.y;
    r4.y = min(1, r4.y);
    r4.y = r4.y * 0.699999988 + 0.300000012;
    r11.z = r4.x * r4.y;
    r4.x = r5.y * 0.380971014 + -1.33012295;
    r4.x = saturate(r4.x * r5.z + r4.z);
    r4.xy = float2(-0,-0.5) + r4.xx;
    r4.xy = saturate(r4.xy + r4.xy);
    r5.xyzw = float4(-0.336638987,-0.118091002,-0.0145549998,-0.0652839988) * r4.xyxy;
    r4.xy = float2(-0.0395839997,-0.708756983) * r4.xy;
    r10.x = dot(float2(1,1), r5.xy);
    r10.y = dot(float2(1,1), r5.zw);
    r10.z = dot(float2(1,1), r4.xy);
    r4.xyz = float3(0.505478978,0.112625003,1) + r10.xyz;
    r0.x = mad(10, (int)vThreadID.x, (int)r0.x);
    r6.xy = r9.xx;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.yyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r2.xyzw
    r7.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r7.xyzw
    r4.w = r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r4.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r6.xyzw
    r8.xy = r6.zy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r8.xyzw
    r11.w = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r11.xyzw
    r3.xzw = r0.wyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r3.xyzw
    r0.y = (int)r0.x + 9;
    r3.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r3.xyzw
  }
  return;
}