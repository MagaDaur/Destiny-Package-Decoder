// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xy = t0.Load(r2.y).zw;
    r5.xyzw = t0.Load(r2.z).zwxy;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xzw = t0.Load(r0.y).zxy;
    r0.y = saturate(r5.x);
    r7.xy = r0.yy * float2(0.450000048,0.450000048) + float2(0.75,0.75);
    r0.z = saturate(r3.w);
    r8.xyzw = r0.zzzz * float4(-2.38300395,-5.07675505,0.673469007,-6.36473989) + float4(1.89899099,10.8131285,0,1.62836802);
    r0.w = r0.z * r0.z;
    r8.xy = r8.xy * r0.ww + r8.zw;
    r9.xyz = cmp(r0.zzz >= float3(0,0.514999986,1));
    r9.xyw = r9.xyz ? float3(1,1,1) : 0;
    r9.xyz = r9.xyw + r9.yww;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xy = r9.xy * r8.xy;
    r8.xy = float2(2,2) * r8.xy;
    r8.x = r8.x + r8.y;
    r8.x = r9.z * 2 + r8.x;
    r7.z = saturate(r9.w * 1 + r8.x);
    r8.xyzw = r0.zzzz * float4(8.19297791,0.325239003,5.4000001,1.43178701) + float4(-11.9033432,-1.20375204,0,0.446725994);
    r8.xy = r8.xy * r0.ww + r8.zw;
    r9.xyz = cmp(r0.zzz >= float3(0,0.25999999,1));
    r9.xyw = r9.xyz ? float3(1,1,1) : 0;
    r9.xyz = r9.xyw + r9.yww;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xy = r9.xy * r8.xy;
    r8.xy = float2(2,2) * r8.xy;
    r8.x = r8.x + r8.y;
    r8.x = r9.z * 2 + r8.x;
    r8.x = saturate(r9.w * 1 + r8.x);
    r8.y = r8.x * -0.100000001 + 0.200000003;
    r9.z = saturate(r2.x);
    r8.w = r9.z * 0.150000006 + 0.100000001;
    r0.y = 2 + r0.y;
    r10.x = saturate(cb0[1].z);
    r10.y = r10.x * r0.y;
    r11.xyzw = r0.zzzz * float4(-28.8381233,8.6693306,-0.105263002,11.0120802) + float4(18.0278244,-18.7149544,0,-0.966457009);
    r0.yw = r11.xy * r0.ww + r11.zw;
    r11.xyz = cmp(r0.zzz >= float3(0,0.414999992,1));
    r11.xyz = r11.xyz ? float3(1,1,1) : 0;
    r11.xy = r11.xy + r11.yz;
    r11.xy = float2(9.99999997e-007,9.99999997e-007) + r11.xy;
    r11.xy = float2(0.5,0.5) * r11.xy;
    r11.xy = frac(r11.xy);
    r0.yz = r11.xy * r0.yw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r10.z = 0.5 * r0.y;
    r0.x = mad(11, (int)vThreadID.x, (int)r0.x);
    r7.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.yyzw
    r11.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r9.xyw = float3(0.25,0.25,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.xxxx, r9.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.zzzz, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r11.wwww, r7.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r4.z = r5.z;
    r4.w = r7.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r4.xyzw
    r8.x = r7.y;
    r8.z = r5.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r8.xyzw
    r10.w = r5.w;
    r10.x = r6.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r10.yzwx
    r5.zw = r2.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r5.xyzw
    r0.yz = (int2)r0.xx + int2(9,10);
    r6.xy = r2.zw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
    r10.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r10.xyzw
  }
  return;
}