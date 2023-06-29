// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[185];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xyz = t2.Load(r0.y).xyz;
    r0.y = cb0[22].x / r4.w;
    r0.z = saturate(r5.y);
    r0.w = 1 + -r0.z;
    r7.x = r0.z * r0.z;
    r0.w = r0.w * r7.x + r0.z;
    r0.w = min(1, r0.w);
    r0.w = r0.w * 0.800000012 + 0.200000003;
    r7.xy = saturate(r6.yz);
    r0.z = r0.z * -0.949999988 + 1;
    r7.xz = r7.xy * float2(0.599999964,2.19999599) + float2(0.300000012,-1.19999599);
    r7.y = r7.y * r7.y;
    r7.y = r7.z * r7.y;
    r7.y = max(0, r7.y);
    r7.y = 0.0199999996 * r7.y;
    r7.z = saturate(r1.w);
    r7.z = 1 + -r7.z;
    r7.z = r7.z * -9.5 + 10;
    r8.w = r3.w + r0.y;
    r9.xyz = cb0[183].xyz * r0.www;
    r9.xyz = r9.xyz * cb0[182].xxx + r1.xyz;
    r0.y = saturate(cb0[184].x * 3);
    r0.y = 1 + -r0.y;
    r9.yzw = r9.xyz * r0.yyy;
    r10.xyz = cb0[169].xxx * r9.yzw;
    r11.xyz = r9.yzw * cb0[169].xxx + r3.xyz;
    r0.y = saturate(cb0[184].x * r7.z);
    r0.y = 1 + -r0.y;
    r4.x = r4.x * r0.y;
    r0.y = cb0[184].x * r4.x;
    r4.y = r0.y * 6.28318548 + r4.y;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r12.xyz = r1.xyz / r0.www;
    r12.xyz = r12.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r12.xyz = r0.yyy ? r12.xyz : r3.xyz;
    r0.y = dot(r9.yzw, r9.yzw);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r13.xyz = r9.yzw / r0.www;
    r13.xyz = r13.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r11.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r13.xyz = r0.yyy ? r13.xyz : r11.xyz;
    r14.xyz = cb12[1].xyw * r12.yyy;
    r12.xyw = cb12[0].xyw * r12.xxx + r14.xyz;
    r12.xyz = cb12[2].xyw * r12.zzz + r12.xyw;
    r12.xyz = cb12[3].xyw + r12.xyz;
    r14.xyz = cb12[1].xyw * r13.yyy;
    r13.xyw = cb12[0].xyw * r13.xxx + r14.xyz;
    r13.xyz = cb12[2].xyw * r13.zzz + r13.xyw;
    r13.xyz = cb12[3].xyw + r13.xyz;
    r0.yw = r12.xy / r12.zz;
    r0.yw = r0.yw * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.zw = r13.xy / r13.zz;
    r7.zw = r7.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yw = cb12[12].xy * r0.yw;
    r14.xy = (int2)r0.yw;
    r14.zw = float2(0,0);
    r0.y = t1.Load(r14.xyw).x;
    r0.y = r0.y * cb0[0].y + cb0[0].x;
    r0.y = 1 / r0.y;
    r7.zw = cb12[12].xy * r7.zw;
    r15.xy = (int2)r7.zw;
    r15.zw = float2(0,0);
    r0.w = t1.Load(r15.xyw).x;
    r0.w = r0.w * cb0[0].y + cb0[0].x;
    r0.w = 1 / r0.w;
    r12.xyw = t0.Load(r14.xyz).xyz;
    r12.xyw = r12.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r12.xyw, r12.xyw);
    r3.w = rsqrt(r3.w);
    r12.xyw = r12.xyw * r3.www;
    r13.xyw = t0.Load(r15.xyz).xyz;
    r13.xyw = r13.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r3.w = dot(r13.xyw, r13.xyw);
    r3.w = rsqrt(r3.w);
    r13.xyw = r13.xyw * r3.www;
    r3.w = r0.y + -r0.w;
    r7.z = dot(r12.xyw, r13.xyw);
    r7.z = 1 + -r7.z;
    r0.y = r0.y + -r12.z;
    r0.w = r0.w + -r13.z;
    r7.w = r0.y * r0.w;
    r7.zw = cmp(r7.zw < float2(0.600000024,0));
    r3.w = cmp(abs(r3.w) < 2.5);
    r3.w = r3.w ? r7.w : 0;
    r3.w = r7.z ? r3.w : 0;
    r7.z = abs(r0.y) + abs(r0.w);
    r0.y = abs(r0.y) / r7.z;
    r12.x = 1 + r1.w;
    r7.z = dot(r13.xyw, r9.yzw);
    r7.w = r7.z + r7.z;
    r14.xyz = -r7.www * r13.xyw + r9.yzw;
    r12.yzw = r14.xyz * r7.yyy;
    r10.xyz = r0.yyy * r10.xyz + r3.xyz;
    r0.y = 1 + -r0.y;
    r14.xyz = r12.yzw * r0.yyy;
    r10.xyz = r14.xyz * cb0[22].xxx + r10.xyz;
    r10.xyz = r3.www ? r10.xyz : r11.xyz;
    r9.x = r1.w;
    r11.xyzw = r3.wwww ? r12.xyzw : r9.xyzw;
    r0.y = cmp(abs(r0.w) < 0.100000001);
    r12.xyz = -r7.zzz * r13.xyw + r9.yzw;
    r1.w = dot(r12.xyz, r12.xyz);
    r1.w = rsqrt(r1.w);
    r12.xyz = r12.xyz * r1.www;
    r1.w = dot(r12.xyz, r9.yzw);
    r3.w = 1 + -r7.x;
    r1.w = r3.w * r1.w;
    r3.w = cmp(abs(r7.z) < 1);
    r3.w = r0.y ? r3.w : 0;
    r0.z = cmp(r1.w < r0.z);
    r0.y = r0.y ? r0.z : 0;
    r0.z = r0.y ? 9.99999975e-005 : r1.w;
    r7.xyz = r12.xyz * r0.zzz;
    r7.xyz = r3.www ? r7.xyz : r11.yzw;
    r9.xyz = cb12[7].xyz + -r10.xyz;
    r0.z = dot(r9.xyz, r9.xyz);
    r0.z = rsqrt(r0.z);
    r9.xyz = r9.xyz * r0.zzz;
    r0.z = 0.00999999978 + -r0.w;
    r9.xyz = r9.xyz * r0.zzz + r3.xyz;
    r9.xyz = r7.xyz * cb0[22].xxx + r9.xyz;
    r9.xyz = r3.www ? r9.xyz : r10.xyz;
    r0.y = r3.w ? r0.y : 0;
    r8.xyz = r0.yyy ? r3.xyz : r9.xyz;
    r1.xyz = r0.yyy ? r1.xyz : r7.xyz;
    r0.y = max(1, r11.x);
    r1.w = r3.w ? r0.y : r11.x;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r8.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}