// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).yzwx;
    r2.xyzw = t0.Load(r2.w).yzwx;
    r0.y = saturate(r3.w);
    r0.y = 1 + -r0.y;
    r0.y = r0.y * 0.5 + 0.5;
    r0.zw = saturate(cb0[1].yy * float2(0.125,0.200000003) + float2(-0.25,-1));
    r0.zw = r0.zw * float2(0.850000024,0.75) + float2(0.150000006,0.25);
    r6.w = r0.y * r0.z;
    r0.y = saturate(r5.x);
    r7.xy = r0.yy * float2(0.639003992,2.474576) + float2(0,-1.474576);
    r8.xyz = cmp(r0.yyy >= float3(0,0.803332984,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r0.yz = r8.xy * r7.xy;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r8.z * 2 + r0.y;
    r0.y = saturate(r8.w * 1 + r0.y);
    r0.y = r0.y * 0.00699999975 + 0.00300000003;
    r0.z = saturate(r4.x);
    r7.x = 1 + -r0.z;
    r0.y = r7.x * r0.y;
    r7.x = r0.y * r0.w;
    r0.y = saturate(-3 + r3.w);
    r7.y = 1 + -r0.y;
    r0.y = r0.z * 2 + -3;
    r0.w = r0.z * r0.z;
    r0.y = r0.y * r0.w + 1;
    r0.y = max(0, r0.y);
    r0.y = 100 * r0.y;
    r8.x = saturate(5 * r1.w);
    r8.yz = r8.xx * float2(10.3448277,-1.10701096) + float2(0,1.10701096);
    r9.xyz = cmp(r8.xxx >= float3(0,0.0966669992,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r8.xw = r9.xy + r9.yz;
    r8.xw = float2(9.99999997e-007,9.99999997e-007) + r8.xw;
    r8.xw = float2(0.5,0.5) * r8.xw;
    r8.xw = frac(r8.xw);
    r8.xy = r8.xw * r8.yz;
    r8.xy = r8.xy + r8.xy;
    r8.x = r8.x + r8.y;
    r8.y = saturate(0.25 * r3.w);
    r8.zw = r8.yy * float2(5.45454502,-1.22449005) + float2(0,1.22449005);
    r9.xyz = cmp(r8.yyy >= float3(0,0.183332995,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r9.xy = r9.xy + r9.yz;
    r9.xy = float2(9.99999997e-007,9.99999997e-007) + r9.xy;
    r9.xy = float2(0.5,0.5) * r9.xy;
    r9.xy = frac(r9.xy);
    r8.yz = r9.xy * r8.zw;
    r8.yz = r8.yz + r8.yz;
    r8.y = r8.y + r8.z;
    r8.xy = min(float2(1,1), r8.xy);
    r8.x = r8.x * 4.75 + -0.75;
    r8.x = r8.y * r8.x + 1;
    r7.z = r8.x * r0.y;
    r0.y = 1.51612902 * r0.z;
    r0.z = r0.z * -0.483871013 + -0.0322580002;
    r0.y = saturate(r0.z * r0.w + r0.y);
    r8.xyz = r0.yyy * float3(0,-0.126016006,-0.147888005) + float3(1,0.306908011,0.186619997);
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
    r8.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r8.xyzw
    r6.xyz = r4.yzw;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r6.xyzw
    r7.w = r5.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r7.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
    r5.w = r2.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r2.xyzw
  }
  return;
}