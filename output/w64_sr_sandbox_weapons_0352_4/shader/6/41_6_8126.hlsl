// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.yzw = t0.Load(r0.w).xyz;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.y = 0.400000006 * r0.y;
    r5.x = max(1, r0.y);
    r0.y = saturate(r3.w);
    r6.xyz = r0.yyy * float3(0.00275000022,0.5,1) + float3(0.00124999997,0.5,0);
    r5.yz = float2(1,1);
    r5.xyz = r6.yzz * r5.xyz;
    r0.y = saturate(r4.y);
    r7.xyzw = r0.yyyy * float4(0.188278019,0.147128999,0.289774984,3) + float4(0.0661220029,0.0637099966,0.43039301,2);
    r0.y = saturate(r1.w);
    r8.xyzw = r0.yyyy * float4(-8143.06348,1.28217101,9.12500095,0.300125003) + float4(611.829468,-2.57331896,0,0.991023004);
    r0.z = r0.y * r0.y;
    r8.xy = r8.xy * r0.zz + r8.zw;
    r9.xyz = cmp(r0.yyy >= float3(0,0.0566670001,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r8.zw = r9.xy + r9.yz;
    r8.zw = float2(9.99999997e-007,9.99999997e-007) + r8.zw;
    r8.zw = float2(0.5,0.5) * r8.zw;
    r8.zw = frac(r8.zw);
    r8.xy = r8.zw * r8.xy;
    r8.xy = r8.xy + r8.xy;
    r0.w = saturate(r8.x + r8.y);
    r6.y = r7.w * r0.w;
    r0.w = saturate(cb0[4].z);
    r0.y = r0.y * -0.0909089968 + -0.909090996;
    r0.y = r0.y * r0.z + 1;
    r0.z = r0.w * 0.25 + 0.25;
    r0.y = r0.y * r0.z + 0.5;
    r6.z = 18 * r0.y;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r5.w = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r5.xyzw
    r7.w = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r6.w = r3.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r6.xyzw
    r0.y = (int)r0.x + 5;
    r4.x = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}