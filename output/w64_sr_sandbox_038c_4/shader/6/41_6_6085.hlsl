// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Buffer<float4> t0 : register(t0);

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
    r5.xyzw = r0.wwww * float4(0.600000024,1.13333297,-7.50619507,-0.426297009) + float4(0,-0.133332998,29.4110336,1.16508996);
    r6.xyz = cmp(r0.www >= float3(0,0.25,1));
    r6.xyw = r6.xyz ? float3(1,1,1) : 0;
    r6.xyz = r6.xyw + r6.yww;
    r6.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r6.xyz;
    r6.xyz = float3(0.5,0.5,0.5) * r6.xyz;
    r6.xyz = frac(r6.xyz);
    r5.xy = r6.xy * r5.xy;
    r5.xy = float2(2,2) * r5.xy;
    r5.x = r5.x + r5.y;
    r5.x = r6.z * 2 + r5.x;
    r5.x = saturate(r6.w * 1 + r5.x);
    r5.x = -0.75 * r5.x;
    r5.y = saturate(r4.z);
    r5.y = r5.y * 0.5 + 1;
    r5.x = r5.x * r5.y;
    r6.xy = r0.ww * float2(-9.83333302,-1.00801098) + float2(1,0.280945003);
    r5.y = r0.w * r0.w;
    r5.yz = r5.zw * r5.yy + r6.xy;
    r6.xyz = cmp(r0.www >= float3(0,0.166666999,0.706667006));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r5.yz = r6.xy * r5.yz;
    r5.yz = r5.yz + r5.yz;
    r0.w = saturate(r5.y + r5.z);
    r0.w = 1.5 * r0.w;
    r5.y = round(r4.w);
    r5.y = -r5.y + r4.w;
    r5.z = abs(r5.y) * -16 + 8;
    r5.y = r5.y * r5.z;
    r5.z = abs(r5.y) * 0.224999994 + 0.774999976;
    r5.y = r5.y * r5.z;
    r6.x = 0.5 * r5.y;
    r5.y = 0.25 + r1.x;
    r5.z = round(r5.y);
    r5.y = r5.y + -r5.z;
    r5.z = abs(r5.y) * -16 + 8;
    r5.y = r5.y * r5.z;
    r5.z = abs(r5.y) * 0.224999994 + 0.774999976;
    r5.y = r5.y * r5.z;
    r6.y = 0.5 * r5.y;
    r5.y = r1.y * 0.5 + 0.25;
    r5.z = round(r5.y);
    r5.y = r5.y + -r5.z;
    r5.z = abs(r5.y) * -16 + 8;
    r5.y = r5.y * r5.z;
    r5.z = abs(r5.y) * 0.224999994 + 0.774999976;
    r5.y = r5.y * r5.z;
    r6.z = 0.5 * r5.y;
    r5.yzw = float3(0,0,1) + r6.xyz;
    r6.x = dot(r5.yzw, r5.yzw);
    r6.x = rsqrt(r6.x);
    r5.yzw = r6.xxx * r5.yzw;
    r6.w = r0.z + r0.y;
    r7.xyz = cb0[26].xyz * r5.zzz;
    r7.xyz = cb0[25].xyz * r5.yyy + r7.xyz;
    r5.yzw = cb0[27].xyz * r5.www + r7.xyz;
    r0.y = dot(r5.yzw, r5.yzw);
    r0.y = rsqrt(r0.y);
    r5.yzw = r5.yzw * r0.yyy;
    r7.xyz = cb0[152].xyz * r5.xxx;
    r7.xyz = cb0[151].xxx * r7.xyz;
    r6.xyz = r5.yzw * r0.www + r7.xyz;
    r2.xyz = r6.xyz * cb0[142].xxx + r2.xyz;
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